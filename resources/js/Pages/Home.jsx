import React, { useEffect, useState } from "react";
import Header from "../components/Header.jsx";
import Footer from "../components/Footer.jsx";
import Swal from "sweetalert2";

const Home = () => {
    const [books, setBooks] = useState([]);
    const [allKinds, setAllKinds] = useState([]);
    const [selectedKind, setSelectedKind] = useState("");
    const [searchTerm, setSearchTerm] = useState("");

    const handleViewMore = (book) => {
        Swal.fire({
            title: book.title,
            width: 700,
            html: `
                <div style="display: flex; justify-content: center;">
                    <img src="${book.image}" alt="${book.title}" height="200" />
                </div>
                <p><strong>Auteur :</strong> ${book.author}</p></br>
                <p><strong>Description :</strong> ${book.description}</p></br>
                <p><strong>Disponibilité :</strong> ${
                    book.quantity > 0 ? "Disponible" : "Indisponible"
                }</p>
            `,
            confirmButtonText: "Fermer",
            customClass: {
                confirmButton:
                    "rounded-full bg-blue-500 hover:bg-blue-700 text-white font-semibold px-3 py-1 rounded",
            },
        });
    };

    useEffect(() => {
        fetchBooks();
    }, []);

    const fetchBooks = async () => {
        try {
            const response = await fetch("/books");
            const data = await response.json();
            setBooks(data);

            // Extract unique kinds from books
            const uniqueKinds = [...new Set(data.map((book) => book.kind))];
            setAllKinds(uniqueKinds);
        } catch (error) {
            console.log(error);
        }
    };

    const truncateDescription = (description, maxLength) => {
        if (description.length > maxLength) {
            return description.substring(0, maxLength) + "...";
        }
        return description;
    };

    const handleKindSelection = (kind) => {
        setSelectedKind(kind);
    };

    const handleSearchTermChange = (e) => {
        setSearchTerm(e.target.value);
    };

    const filteredBooks = selectedKind
        ? books.filter((book) => book.kind === selectedKind)
        : books;

    const searchedBooks = searchTerm
        ? filteredBooks.filter((book) =>
              book.title.toLowerCase().includes(searchTerm.toLowerCase())
          )
        : filteredBooks;

    return (
        <div>
            <Header />
            <div className="flex justify-center items-center space-x-4 mt-8">
                <h1 className="text-2xl font-semibold">Tous nos livres</h1>
                <select
                    value={selectedKind}
                    onChange={(e) => handleKindSelection(e.target.value)}
                    className="px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none"
                >
                    <option value="">Tous les genres</option>
                    {allKinds.map((kind) => (
                        <option key={kind} value={kind}>
                            {kind}
                        </option>
                    ))}
                </select>
                <input
                    type="text"
                    placeholder="Rechercher un livre"
                    value={searchTerm}
                    onChange={handleSearchTermChange}
                    className="px-4 py-2 border border-gray-300 rounded-md shadow-sm focus:outline-none"
                />
            </div>
            <hr className="my-4 mx-20" />
            <div className="flex flex-wrap justify-center">
                {searchedBooks.map((book) => (
                    <div
                        key={book.id}
                        className="max-w-sm rounded overflow-hidden shadow-lg my-5 mx-5"
                    >
                        <img height="100px" src={book.image} alt={book.title} />
                        <div className="px-6 py-4">
                            <div className="font-bold text-xl mb-2">
                                {book.title}
                            </div>
                            <div className="font-bold text-m mb-2 text-gray-700">
                                <strong>Auteur :</strong> {book.author}
                            </div>
                            <p className="text-gray-700 text-base">
                                <strong>Description :</strong>{" "}
                                {truncateDescription(book.description, 100)}
                            </p>
                            <p className="text-m mb-2 text-gray-700">
                                <strong>Disponibilité : </strong>
                                {book.quantity > 0 ? (
                                    <span className="text-green-500">
                                        Disponible
                                    </span>
                                ) : (
                                    <span className="text-red-500">
                                        Indisponible
                                    </span>
                                )}
                            </p>
                        </div>
                        <div className="px-6 pt-4 pb-2 flex justify-end">
                            {" "}
                            <span className="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
                                {book.kind}
                            </span>
                            <span>
                                <button
                                    className="rounded-full bg-blue-500 hover:bg-blue-700 text-white font-semibold px-3 py-1 rounded"
                                    onClick={() => handleViewMore(book)}
                                >
                                    Voir plus
                                </button>
                            </span>
                        </div>
                    </div>
                ))}
            </div>
            <Footer />
        </div>
    );
};

export default Home;
