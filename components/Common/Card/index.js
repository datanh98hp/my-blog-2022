import React from 'react'
import PropTypes from 'prop-types'
import TagShape from '../TagCategory/TagShape'

function Card(props) {
    return (
        <div className="overflow-hidden cursor-pointer rounded-xl relative group">
            <div className='absolute absolute right-0 top-0'>
                <TagShape title="Feature" />
            </div>
            <div className="rounded-xl z-50 opacity-0 group-hover:opacity-100 transition duration-300 ease-in-out cursor-pointer absolute from-black/80 to-transparent bg-gradient-to-t inset-x-0 -bottom-2 pt-30 text-white flex items-end">
                <div>
                    <div
                        className="transform-gpu  p-4 space-y-3 text-xl group-hover:opacity-100 group-hover:translate-y-0 translate-y-4 pb-10 transform transition duration-300 ease-in-out">
                        <div className="font-bold">Jessie Watsica</div>

                        <div className="opacity-70 text-xs">
                            Lorem ipsum dolor sit amet, consectetur adipisicing
                            elit. Distinctio dolores error iure, perferendis
                            sequi totam. Ad aliquam aperiam atque deleniti dolor
                            dolorem enim esse et in, inventore itaque, pariatur
                            reprehenderit.
                        </div>
                    </div>
                </div>
            </div>
            <img
                alt=""
                className="object-cover w-full aspect-square group-hover:scale-110 transition duration-300 ease-in-out"
                src="https://images.unsplash.com/photo-1650790362847-3c1dd609d0c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=686&q=80"
            />
        </div>
    )
}

Card.propTypes = {}

export default Card
