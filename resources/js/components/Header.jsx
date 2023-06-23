import React from "react";

function Header() {
    return (
        <div>
            <nav className="flex items-center justify-between bg-gray-800 p-4">
                <div className="text-white text-lg font-semibold">
                📚 RentBooks Community
                </div>
                <div className="flex space-x-2">
                    <a
                        href="/admin"
                        className="block bg-green-500 hover:bg-green-600 text-white font-semibold py-2 px-4 rounded"
                    >
                        Espace membre
                    </a>
                    <a
                        href="/admin/register"
                        className="block bg-blue-500 hover:bg-blue-600 text-white font-semibold py-2 px-4 rounded"
                    >
                        S'inscrire
                    </a>
                </div>
            </nav>
        </div>
    );
}

export default Header;
