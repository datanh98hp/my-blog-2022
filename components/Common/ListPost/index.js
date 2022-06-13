import React from 'react'
import Card from '../Card'
import CardPost from '../CardPost'


export default function () {
  return (
    <div>
          <div className='title-category flex justify-start md:mx-20 border-b-2 mb-6'>
              <div className='p-4 rounded-b-xl '>
                  <h2 >Featured Post</h2>
              </div>
          </div>
          <div className='featured grid grid-flow-row md:grid-cols-5 md:grid-row-2 gap-4 md:m-14 px-10'>

              <div className='col-span-2 row-span-2'>
                  <Card />
              </div>
              <div className='row-span-1 col-span-1'>
                  <Card />
              </div>
              <div className='row-span-1 col-span-1'>
                  <Card />
              </div>
              <div className='row-span-1 col-span-1'>
                  <Card />
              </div>
              <div className='row-span-1 col-span-1'>
                  <Card />
              </div>
              <div className='row-span-1 col-span-1'>
                  <Card />
              </div>
              <div className='row-span-1 col-span-1'>
                  <Card />
              </div>
          </div>
          <div className='title-category flex justify-start md:mx-20 border-b-2 '>
              <div className='p-4 rounded-b-xl '>
                  <h2 >Newest Post</h2>
              </div>
          </div>
          <div className='list grid grid-flow-row md:grid-cols-4 gap-4 md:m-12 mt-5 p-3 px-10'>
              <CardPost />
              <CardPost />
              <CardPost />
              <CardPost />
          </div>
    </div>
  )
}
