
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import axios from 'axios'

import Loading from '../../apt/Loading';
import LineChart from './LineChart';
import qs from 'qs'

function Section1_1() {
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
     response =  await axios.post('/finalproject1/roi',qs.stringify({date1:"2013",date2:"2016",location:location}));
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
                    <Nav.Link eventKey="1" name="도심(전체)" onClick={clickLocation} >도심(전체)</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="2" name="광화문" onClick={clickLocation} >광화문</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="3" name="동대문" onClick={clickLocation}>동대문</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="4" name="명동" onClick={clickLocation}>명동</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="5" name="서울역" onClick={clickLocation}>서울역</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="6" name="종로" onClick={clickLocation}>종로</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="7" name="충무로" onClick={clickLocation}>충무로</Nav.Link>
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

export default Section1_1