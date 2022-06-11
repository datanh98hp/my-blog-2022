
import React, { useState } from 'react'

import Image from 'next/image'

export default function Nav() {
    // 
    const [activeMobileMenu, setactiveMobileMenu] = useState(false)
    return (
        <nav className="bg-white shadow-lg">
            <div className="max-w-6xl mx-auto px-4">
                <div className="flex justify-between">
                    <div className="flex space-x-7">
                        <div>
                            {/* <!-- Website Logo --> */}
                            <a href="#" className="flex items-center py-4 px-2">
                                <img src="/vercel.svg" alt="Logo" className="h-8 w-8 mr-2" />
                                <span className="font-semibold text-gray-500 text-lg">Navigation</span>
                            </a>
                        </div>
                        {/* <!-- Primary Navbar items --> */}
                        <div className="hidden md:flex items-center space-x-3">
                            <a href="" className="py-4 px-2 text-green-500 border-b-4 border-green-500 font-semibold ">Home</a>
                            <a href="" className="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300">Services</a>
                            <a href="" className="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300">About</a>
                            <a href="" className="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300">Contact</a>
                        </div>
                    </div>
                    {/* <!-- Secondary Navbar items --> */}
                    <div class="hidden md:flex items-center space-x-3 ">
                        <a href="" class="py-2 px-2 font-medium text-gray-500 rounded hover:bg-green-500 hover:text-white transition duration-300">Log In</a>
                        <a href="" class="py-2 px-2 font-medium text-white bg-green-500 rounded hover:bg-green-400 transition duration-300">Sign Up</a>
                    </div>
                    {/* <!-- Mobile menu button --> */}
                    <div className="md:hidden flex items-center">
                        <button className="outline-none mobile-menu-button" onClick={() => setactiveMobileMenu(!activeMobileMenu)}>
                            <svg className=" w-6 h-6 text-gray-500 hover:text-green-500 "
                               
                                fill="none"
                                strokeLinecap="round"
                                strokeLinejoin="round"
                                strokeWidth="2"
                                viewBox="0 0 24 24"
                                stroke="currentColor"
                            >
                                <path d="M4 6h16M4 12h16M4 18h16"></path>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            {/* <!-- mobile menu --> */}
            <div className={`mobile-menu ${activeMobileMenu ? "" : "hidden"}`}>
                <ul className="bg-slate-200 flex flex-col">
                    <li className="active"><a href="/" className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500 font-bold">Home</a></li>
                    <li><a href="#services" className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500  transition duration-300">Services</a></li>
                    <li><a href="#about" className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500  transition duration-300">About</a></li>
                    <li><a href="#contact" className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500  transition duration-300">Contact Us</a></li>
                </ul>
                <ul className='more-inf flex flex-row justify-evenly p-3'>
                    <li>Facebook</li>
                    <li>Zalo</li>
                </ul>
            </div>
        </nav>
    )
}
