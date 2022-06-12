import React from 'react';
import Image from 'next/image'
export default function index() {
    return (
        <div className="h-f border-2 border-gray-200 border-opacity-60 rounded-lg overflow-hidden">
            <div className="">
                <div className="w-full flex p-2">
                    
                    <div className="pl-2 pt-2 ">
                        <p className="font-bold">Vipin Bansal</p>
                        <p className="text-xs">2 June 2022</p>
                    </div>
                </div>
            </div>

            <Image height={500} width={700} className="lg:h-48 md:h-36 w-full object-cover object-center" src="https://cdn.dribbble.com/users/1305593/screenshots/18437994/media/cdab872b464385e6aeea562436a0d523.gif" alt="blog cover" />
            <div className="p-4">
                <h2 className="tracking-widest text-xs title-font font-bold text-green-400 mb-1 uppercase ">Web development</h2>
                <h3 className="title-font text-lg font-medium text-gray-900 mb-3 truncate ">Labore laborum exercitation fugiat non duis incididunt dolore ut excepteur. Do ea consectetur nostrud sit aliquip pariatur et duis incididunt laboris incididunt. Commodo sit nostrud eu est commodo irure velit ex enim elit.Exercitation nostrud consectetur duis reprehenderit minim enim quis magna proident ad anim culpa. Non deserunt exercitation magna duis ad. Irure officia esse labore nulla veniam magna est elit cupidatat consequat pariatur enim veniam in. Do cupidatat qui occaecat exercitation adipisicing aliquip laborum magna fugiat consequat aliqua dolor. Ipsum sint esse aute amet reprehenderit cillum elit aliquip Lorem laborum anim. Irure pariatur commodo Lorem mollit culpa eiusmod occaecat nulla aliqua culpa minim fugiat ex.
                    Cupidatat excepteur magna proident consectetur et elit incididunt laboris velit et ipsum qui duis aliqua. Do reprehenderit aliquip tempor labore excepteur aliqua nisi consequat exercitation. Quis esse proident commodo enim ipsum. Amet incididunt minim labore non sunt in sit. Sint do cillum ullamco sit cupidatat ipsum ea aliqua magna qui magna ad dolor. Dolor nulla tempor anim deserunt est pariatur nisi aliqua fugiat. Cillum veniam aliquip ea laboris esse irure nisi nulla officia exercitation cupidatat minim.</h3>
                <div className="flex items-center flex-wrap ">
                    <a href="/" className="text-green-800  md:mb-2 lg:mb-0">
                        <p className="inline-flex items-center">Read Blog
                            <svg className="w-4 h-4 ml-2" viewBox="0 0 24 24" stroke="currentColor" strokeWidth="2" fill="none" strokeLinecap="round" strokeLinejoin="round">
                                <path d="M5 12h14"></path>
                                <path d="M12 5l7 7-7 7"></path>
                            </svg>
                        </p>
                    </a>
                    <span className="text-gray-400 mr-3 inline-flex items-center lg:ml-auto md:ml-0 ml-auto leading-none text-sm pr-3 py-1 border-r-2 border-gray-200">
                        <svg className="w-4 h-4 mr-1" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinejoin="round">
                            <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z" />
                        </svg>
                        24
                    </span>
                    <span className="text-gray-400 inline-flex items-center leading-none text-sm">
                        <svg className="w-4 h-4 mr-1" stroke="currentColor" strokeWidth="2" fill="none" strokeLinecap="round" strokeLinejoin="round" viewBox="0 0 24 24">
                            <path d="M21 11.5a8.38 8.38 0 01-.9 3.8 8.5 8.5 0 01-7.6 4.7 8.38 8.38 0 01-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 01-.9-3.8 8.5 8.5 0 014.7-7.6 8.38 8.38 0 013.8-.9h.5a8.48 8.48 0 018 8v.5z"></path>
                        </svg>
                        89
                    </span>
                </div>
            </div>
        </div>
    );
}
