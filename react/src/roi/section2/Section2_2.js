
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

function Section2_2() {

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
     response =  await axios.post('/realty_market_price/roi',qs.stringify({date1:"2017",date2:"2018",location:location}));
    console.log(response.data)
  
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
                        <Nav.Link eventKey="1"  name="강남(전체)" onClick={clickLocation}>강남(전체)</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="2" name="강남대로" onClick={clickLocation}>강남대로</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="5" name="논현역" onClick={clickLocation}>논현역</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="3" name="도산대로" onClick={clickLocation}>도산대로</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="4" name="서초" onClick={clickLocation}>서초</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="9" name="신사역" onClick={clickLocation}>신사역</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="6" name="압구정" onClick={clickLocation}>압구정</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="7" name="청담" onClick={clickLocation}>청담</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link eventKey="8" name="테헤란로" onClick={clickLocation}>테헤란로</Nav.Link>
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

export default Section2_2