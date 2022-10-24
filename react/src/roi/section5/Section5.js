
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import Section5_1 from './Section5_1';
import Section5_2 from './Section5_2';
import Section5_3 from './Section5_3';
import Section5_4 from './Section5_4';



function Section5() {
    
    const[section5_1,setSection5_1] = useState(null)
    const[section5_2,setSection5_2] = useState(null)
    const[section5_3,setSection5_3] = useState(null)
    const[section5_4,setSection5_4] = useState(null)

    const clickSection5_1 = () =>{
        setSection5_1(true)
        setSection5_2(null)
        setSection5_3(null)
        setSection5_4(null)
    }
    const clickSection5_2 = () =>{
        setSection5_2(true)
        setSection5_1(null)
        setSection5_3(null)
        setSection5_4(null)
    }
    const clickSection5_3 = () =>{
        setSection5_3(true)
        setSection5_1(null)
        setSection5_2(null)
        setSection5_4(null)
    }
    const clickSection5_4 = () =>{
        setSection5_4(true)
        setSection5_1(null)
        setSection5_2(null)
        setSection5_3(null)
    }
  return (
    <div>
        <div className='mount3'> 
                <Tab.Container id="">
                <Row className="justify-content-md-center">
                <Nav variant="pills" className="justify-content-center">
                  <Nav.Item>
                     <Nav.Link eventKey="1" onClick={clickSection5_1}>도심</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="2" onClick={clickSection5_2}>강남</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="3"  onClick={clickSection5_3}>영등포신촌</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="4" onClick={clickSection5_4}>기타</Nav.Link>
                  </Nav.Item>
              </Nav>
                </Row>
                 </Tab.Container></div>
            {
                section5_1 ? <Section5_1></Section5_1> : null 
            }
            {
                section5_2 ? <Section5_2></Section5_2> : null
            }
            {
                section5_3 ? <Section5_3></Section5_3> : null
            }
            {
                section5_4 ? <Section5_4></Section5_4> : null
            }
    </div>
  )
}

export default Section5