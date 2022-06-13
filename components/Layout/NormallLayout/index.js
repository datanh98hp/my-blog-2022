import React from 'react'
import Header from '../../Header'
import Card from '../../Common/Card'
import TagShape from '../../Common/TagCategory/TagShape'
import CardPost from '../../Common/CardPost'
import ListPost from '../../Common/ListPost'
export default function Normallayout(props) {
    const {children} = props
  return (
      <div>
          <Header />
          <div className=''>
              <div className='grid md:grid-cols-5'>
                  <div className='md:col-span-4'>
                    <div className='content-main'>
                        {children}
                    </div>
                      {/* Listpost Containter */}
                    <ListPost/>

                  </div>

                  <div className='md:col-span-1 md:min-w-fit'>
                      <div className='title-category flex justify-start md:mx-20 border-b-2 '>
                          <div className='p-4 rounded-b-xl '>
                              <h2 >Category</h2>
                          </div>
                      </div>

                      <div class="relative text-gray-600 mt-1 w-20 text-center p-6 flex">
                          <input type="search" name="serch" placeholder="Search" class="bg-white h-10  px-5 pr-10 border-2 rounded-full text-sm focus:outline-none" />
                          <button type="submit" class="ml-2 rounded-full bg-slate-400 pl-6 pr-6 pt-2 pb-2">
                              Tìm
                          </button>
                      </div>
                      <div className="overflow-auto whitespace-no-wrap py-3 px-4 ">
                          <button className="inline-block border border-teal-500 text-teal-500 rounded-full px-6 py-2 m-1">Button 2</button>
                          <button className="inline-block border border-teal-500 text-teal-500 rounded-full px-6 py-2 m-1">Button 3</button>
                          <button className="inline-block border border-teal-500 text-teal-500 rounded-full px-6 py-2 m-1">Button 4</button>
                          <button className="inline-block border border-teal-500 text-teal-500 rounded-full px-6 py-2 m-1">Button 5</button>
                          <button className="inline-block border border-teal-500 text-teal-500 rounded-full px-6 py-2 m-1">Button 6</button>

                      </div>
                  </div>

              </div>
          </div>
      </div>
  )
}
