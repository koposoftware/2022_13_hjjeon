
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import axios from 'axios'

import Section3_1 from './Section3_1';
import Section3_2 from './Section3_2';
import Section3_3 from './Section3_3';
import Section3_4 from './Section3_4';


function Section3() {
    
    const[section3_1,setSection3_1] = useState(null)
    const[section3_2,setSection3_2] = useState(null)
    const[section3_3,setSection3_3] = useState(null)
    const[section3_4,setSection3_4] = useState(null)

    const clickSection3_1 = () =>{
        setSection3_1(true)
        setSection3_2(null)
        setSection3_3(null)
        setSection3_4(null)
    }
    const clickSection3_2 = () =>{
        setSection3_2(true)
        setSection3_1(null)
        setSection3_3(null)
        setSection3_4(null)
    }
    const clickSection3_3 = () =>{
        setSection3_3(true)
        setSection3_1(null)
        setSection3_2(null)
        setSection3_4(null)
    }
    const clickSection3_4 = () =>{
        setSection3_4(true)
        setSection3_1(null)
        setSection3_2(null)
        setSection3_3(null)
    }
  return (
    <div>
        <div className='mount3'> 
                <Tab.Container id="">
                <Row className="justify-content-md-center">
                <Nav variant="pills" className="justify-content-center">
                  <Nav.Item>
                     <Nav.Link eventKey="1" onClick={clickSection3_1}>도심</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="2" onClick={clickSection3_2}>강남</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="3"  onClick={clickSection3_3}>영등포신촌</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="4" onClick={clickSection3_4}>기타</Nav.Link>
                  </Nav.Item>
              </Nav>
                </Row>
                 </Tab.Container></div>
            {
                section3_1 ? <Section3_1></Section3_1> : null 
            }
            {
                section3_2 ? <Section3_2></Section3_2> : null
            }
            {
                section3_3 ? <Section3_3></Section3_3> : null
            }
            {
                section3_4 ? <Section3_4></Section3_4> : null
            }
    </div>
  )
}

export default Section3