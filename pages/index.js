
import React, { useState } from 'react'
import Card from '../components/Common/Card'
import TagShape from '../components/Common/TagCategory/TagShape'
import CardPost from '../components/Common/CardPost'

import Header from '../components/Header'
import Script from 'next/script'
import Head from 'next/head'
export default function Home() {


  return (
    <div className=''>      
      <Header />
      <div className='title-category md:mx-20 shadow-xl border-b rounded-xl mt-2'>
        <div className='p-4'>
          <h2>Featured Post</h2>
        </div>
      </div>
      <div className='featured grid grid-flow-row md:grid-cols-5 md:grid-row-2 gap-4 md:m-14 my-5 px-10'>
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
      <div className='title-category md:mx-20 shadow-xl  border-b rounded-xl'>
          <div className='p-4'>
            <h2>Newest Post</h2>
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
