import React from "react";

function Header() {
    return (
        <div>
            <nav className="flex items-center justify-between bg-gray-800 p-4">
                <div className="text-white text-lg font-semibold">
                    RentBooks Community
                </div>
                <div>
                    <a
                        href="/admin"
                        className="block bg-green-500 hover:bg-green-600 text-white font-semibold py-2 px-4 rounded"
                    >
                        Espace membre
                    </a>
                </div>
            </nav>
        </div>
    );
}

export default Header;
