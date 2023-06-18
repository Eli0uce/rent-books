import React, { useEffect, useState } from "react";
// import { Container, Row, Col, Card, Button } from 'react-bootstrap';
import Header from "../components/Header.jsx";
import Footer from "../components/Footer.jsx";

const Home = () => {
    const [books, setBooks] = useState([]);

    useEffect(() => {
        fetchBooks();
    }, []);

    const fetchBooks = async () => {
        try {
            const response = await fetch("/books");
            const data = await response.json();
            setBooks(data);
        } catch (error) {
            console.log(error);
        }
    };

    return (
        <div>
            <Header />
            <div className="container mx-auto mt-8">
                <h1 className="text-2xl font-semibold mb-4">Nos livres</h1>
                {books.map((book) => (
                    <div
                        key={book.id}
                        className="bg-white rounded-lg shadow-lg p-4 mb-4 grid-cols-3"
                    >
                        <h2 className="text-xl font-medium">{book.title}</h2>
                        <img src={book.image} />
                        <p>{book.author}</p>
                        <p>{book.description}</p>
                    </div>
                ))}
            </div>
            <Footer />
        </div>
    );
};

export default Home;
