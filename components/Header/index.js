
import React, { useState } from 'react'
import Logo from '../../assets/img/profile.jpg'
import Image from 'next/image'
import Link from 'next/link'

export default function Nav() {
    // 
    const [activeMobileMenu, setactiveMobileMenu] = useState(false)
    return (
        <nav className="bg-white shadow-lg">
            <div className="max-w-6xl mx-auto px-4">
                <div className="flex justify-between">
                    <div className="flex space-x-7 p-3">
                        <div className='logo flex items-center justify-center'>
                            <Image width={30} height={30} src={Logo} className="rounded-full" />
                        </div>
                        {/* <!-- Primary Navbar items --> */}
                        <ul className="hidden md:flex items-center space-x-3">
                            <li className="py-4 px-2 text-green-500 border-b-4 border-green-500 font-semibold "> <Link href="/" >Home</Link></li>
                            <li className="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300"><Link href="/services" >Services</Link></li>
                            <li className="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300"><Link href="/about" >About</Link></li>
                            <li className="py-4 px-2 text-gray-500 font-semibold hover:text-green-500 transition duration-300"><Link href="/contact" >Contact</Link></li>
                        </ul>
                    </div>
                    {/* <!-- Secondary Navbar items --> */}
                    <ul className="hidden md:flex items-center space-x-3 ">
                        <li> <Link href="/login" className="py-2 px-2 font-medium text-gray-500 rounded hover:bg-green-500 hover:text-white transition duration-300">Log In</Link></li>
                        <li><Link href="/signup" className="py-2 px-2 font-medium text-white bg-green-500 rounded hover:bg-green-400 transition duration-300">Sign Up</Link></li>
                    </ul>
                    {/* <!-- Mobile menu button --> */}
                    <div className="md:hidden flex items-center space-x-3">
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
            <div className={`mobile-menu p-4 ${activeMobileMenu ? "" : "hidden"}`}>
                <ul className=" flex flex-col justify-center">
                    <li className="active block text-sm px-2 py-4 hover:text-white hover:bg-green-500 font-bold"><Link href="/">Home</Link></li>
                    <li className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500  transition duration-300"><Link href="/service" >Services</Link></li>
                    <li className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500  transition duration-300"><Link href="/about" >About</Link></li>
                    <li className="block text-sm px-2 py-4 hover:text-white hover:bg-green-500  transition duration-300"><Link href="/contact" >Contact Us</Link></li>
                </ul>
                <ul className='more-inf flex flex-row justify-evenly p-3'>
                    <li>Facebook</li>
                    <li>Zalo</li>
                    <li>Facebook</li>
                    <li>Zalo</li>
                </ul>
            </div>
        </nav>
    )
}

