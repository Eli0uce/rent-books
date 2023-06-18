import React, { useEffect, useState } from "react";
import Header from "../components/Header.jsx";
import Footer from "../components/Footer.jsx";

const Home = () => {
    const [books, setBooks] = useState([]);
    const [allKinds, setAllKinds] = useState([]);
    const [selectedKind, setSelectedKind] = useState("");

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

    const filteredBooks = selectedKind
        ? books.filter((book) => book.kind === selectedKind)
        : books;

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
            </div>
            <hr className="my-4 mx-20"/>
            <div className="flex flex-wrap justify-center">
                {filteredBooks.map((book) => (
                    <div className="max-w-sm rounded overflow-hidden shadow-lg my-5 mx-5">
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
                                <strong>Quantité :</strong> {book.quantity} restants
                            </p>
                        </div>
                        <div className="px-6 pt-4 pb-2">
                            <span className="inline-block bg-gray-200 rounded-full px-3 py-1 text-sm font-semibold text-gray-700 mr-2 mb-2">
                                {book.kind}
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
