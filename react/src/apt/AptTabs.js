import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';
import qs from 'qs';
import './bootstrap.css'; 
import axios from 'axios'
import LineChart from './LineChart';
import Loading from './Loading';

function AptTabs() {
  
    const [location,setLocation] = useState([]);
    const [data,setData] = useState(null);
    const [loading,setLoading] = useState(null);
    const [period,setPeriod] = useState(null);
    const [section,setSection] = useState(null);
    
    const clickLocation= (e)=>{
        setLocation(e.target.name)
    }
    const callData = async(location)=>{
        try {
            let response = null
            setLoading(true)
            if(period === 10){
                response =  await axios.post('/realty_market_price/apt/getAptPrice1',qs.stringify({location:location}));
                console.log(response.data)
            }
            if(period === 5){
                response =  await axios.post('/realty_market_price/apt/getAptPrice2',qs.stringify({location:location}));
                console.log(response.data.rows)
                
            }
            if(period === 3){
              response =  await axios.post('/realty_market_price/apt/getAptPrice3',qs.stringify({location:location}));
              console.log(response.data.rows)
              
          }
            setData(response.data)
            
        } catch (error) {
            
        }
        setLoading(false)
    }
    useEffect(()=>{
        if(location != ''){
            console.log(location)
            console.log(period)
            callData(location)
        }
        if(period != null){
          setSection(true)
        }
    },[location,period])
    return (
        <div className="mount3">
           <Tab.Container id="">
          <Row className="justify-content-md-center">
          <Nav variant="pills" className="justify-content-center">
            <Nav.Item>
               <Nav.Link eventKey="ten" onClick={()=>setPeriod(10)}>2013.06-2022.06</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link eventKey="five"onClick={()=>setPeriod(5)}>2017.12-2022.06</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link eventKey="three"onClick={()=>setPeriod(3)}>2019.06-2022.06</Nav.Link>
            </Nav.Item>
        </Nav>
          </Row>
           </Tab.Container>
           {section ?
           <div className='mount3'>
              <Tab.Container id="">
              <Row className="justify-content-md-center">
                <Col sm={12}>
                  <Nav variant="pills" className="justify-content-center">
                    <Nav.Item>
                      <Nav.Link variant="success"  eventKey="1"  name="서울특별시 강남구" onClick={clickLocation}>강남구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="2"  name="서울특별시 강동구" onClick={clickLocation}>강동구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="3"  name="서울특별시 강북구" onClick={clickLocation}>강북구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="4" name="서울특별시 강서구" onClick={clickLocation}>강서구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="5"  name="서울특별시 관악구" onClick={clickLocation}>관악구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="6" name="서울특별시 광진구" onClick={clickLocation}>광진구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="7" name="서울특별시 구로구" onClick={clickLocation}>구로구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="8" name="서울특별시 금천구" onClick={clickLocation}>금천구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="9" name="서울특별시 노원구" onClick={clickLocation}>노원구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="10" name="서울특별시 도봉구" onClick={clickLocation}>도봉구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="11" name="서울특별시 동대문구" onClick={clickLocation}>동대문구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="12" name="서울특별시 동작구" onClick={clickLocation}>동작구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="13" name="서울특별시 마포구" onClick={clickLocation}>마포구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="14" name="서울특별시 서대문구" onClick={clickLocation}>서대문구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="15" name="서울특별시 서초구" onClick={clickLocation}>서초구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="16" name="서울특별시 성동구" onClick={clickLocation}>성동구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="17" name="서울특별시 성북구" onClick={clickLocation}>성북구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="18" name="서울특별시 송파구" onClick={clickLocation}>송파구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="19" name="서울특별시 양천구" onClick={clickLocation}>양천구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="20" name="서울특별시 영등포구" onClick={clickLocation}>영등포구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="21" name="서울특별시 용산구" onClick={clickLocation}>용산구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="22" name="서울특별시 은평구" onClick={clickLocation}>은평구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="23" name="서울특별시 종로구" onClick={clickLocation}>종로구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="24" name="서울특별시 중구" onClick={clickLocation}>중구</Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                      <Nav.Link  eventKey="25" name="서울특별시 중랑구" onClick={clickLocation}>중랑구</Nav.Link>
                    </Nav.Item>
                  </Nav>
                </Col>
                  <Tab.Content>
                  <div style={{display:'flex',justifyContent:'center',alignItems:'center'}}>
                  {loading ? <Loading /> : null}
                  </div>
                  {data ?<div className='mount2'><LineChart data={data}/></div>: null }
                  </Tab.Content>
                
                </Row>
              
            </Tab.Container>
           </div>
               : null 
          
          }
        
    </div>
  )
}

export default AptTabs