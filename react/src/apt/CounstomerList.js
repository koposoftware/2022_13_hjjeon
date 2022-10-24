import React, { useEffect, useState } from 'react'
import axios from 'axios'
const CustomerList = props => {
    const [data,setData] = useState([]);
    useEffect(()=>{
        axios('http://localhost:5000/customers')
        .then(response=>{
            if(response.status === 200){
                setData(response.data.rows)
                console.log(data)
            }
        })
        .catch(err=>{
  
        })
    },[])
    return (
        <div>
            CustomerList Component
            {
                data.length>0 &&
                data.map((item,index)=><div key={index}><a href='#'>{item[0]}</a>,{item[1]}</div>)
            }
        </div>
    )
}

export default CustomerList;