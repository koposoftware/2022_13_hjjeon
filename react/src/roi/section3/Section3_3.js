
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import axios from 'axios'
import LineChart from './LineChart';
import Loading from '../../apt/Loading';
import qs from 'qs'

function Section3_3() {

  const [location,setLocation] = useState([]);
  const [data,setData] = useState(null);
  const [loading,setLoading] = useState(null);

  const clickLocation= (e)=>{
    setLocation(e.target.name)
}
const callData = async(location)=>{
  try {
      let response = null
      setLoading(true)
     console.log(location)
     response =  await axios.post('/realty_market_price/roi',qs.stringify({date1:"2019",date2:"2019",location:location}));
    console.log(response.data[0].earningRate)
  
      setData(response.data)
      
  } catch (error) {
      
  }
  setLoading(false)
}
useEffect(()=>{
    if(location != ''){
        console.log(location)
        callData(location)
    }
    
},[location])

  return (
    <div>
        <div className='mount3'> 
                <Tab.Container id="">
                <Row className="justify-content-md-center">
                <Nav variant="pills" className="justify-content-center">
                <Nav.Item>
                    <Nav.Link eventKey="1" name="영등포신촌(전체)" onClick={clickLocation}>영등포신촌(전체)</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="2" name="공덕역" onClick={clickLocation}>공덕역</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="3" name="신촌" onClick={clickLocation}>신촌</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="5" name="영등포" onClick={clickLocation}>영등포</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="4" name="홍대합정" onClick={clickLocation}>홍대합정</Nav.Link>
                 </Nav.Item>
              </Nav>
                </Row>
                 </Tab.Container></div>
                 <Tab.Content>
                  <div style={{display:'flex',justifyContent:'center',alignItems:'center'}}>
                  {loading ? <Loading /> : null}
                  </div>
                  {data ?<div className='mount2'><LineChart data={data}/></div>: null }
                  </Tab.Content>
    </div>
  )
}

export default Section3_3