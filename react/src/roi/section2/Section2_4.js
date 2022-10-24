
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

function Section2_4() {

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
                    <Nav.Link eventKey="1" name="기타(전체)" onClick={clickLocation}>기타(전체)</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="2" name="건대입구" onClick={clickLocation}>건대입구</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="3" name="경희대" onClick={clickLocation}>경희대</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="4" name="군자" onClick={clickLocation}>군자</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="5" name="목동" onClick={clickLocation}>목동</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="18" name="불광역" onClick={clickLocation}>불광역</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="6" name="사당" onClick={clickLocation}>사당</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="19" name="서울대입구역" onClick={clickLocation}>서울대입구역</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="7" name="성신여대" onClick={clickLocation}>성신여대</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="25" name="수유" onClick={clickLocation}>수유</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="8" name="신림역" onClick={clickLocation}>신림역</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="20" name="오류동역" onClick={clickLocation}>오류동역</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="21" name="왕십리" onClick={clickLocation}>왕십리</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="10" name="용산" onClick={clickLocation}>용산</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="11" name="이태원" onClick={clickLocation}>이태원</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="12" name="잠실" onClick={clickLocation}>잠실</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="13" name="장안동" onClick={clickLocation}>장안동</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="14" name="천호" onClick={clickLocation}>천호</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="15" name="청량리" onClick={clickLocation}>청량리</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="16" name="혜화동" onClick={clickLocation}>혜화동</Nav.Link>
                 </Nav.Item>
                 <Nav.Item>
                   <Nav.Link eventKey="17" name="화곡" onClick={clickLocation}>화곡</Nav.Link>
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

export default Section2_4