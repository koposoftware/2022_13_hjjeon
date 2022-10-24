
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import axios from 'axios'
import Section1_1 from './Section1_1';
import Section1_2 from './Section1_2';
import Section1_3 from './Section1_3';
import Section1_4 from './Section1_4';


function Section1() {
    
    const[section1_1,setSection1_1] = useState(null)
    const[section1_2,setSection1_2] = useState(null)
    const[section1_3,setSection1_3] = useState(null)
    const[section1_4,setSection1_4] = useState(null)

    const clickSection1_1 = () =>{
        setSection1_1(true)
        setSection1_2(null)
        setSection1_3(null)
        setSection1_4(null)
    }
    const clickSection1_2 = () =>{
        setSection1_2(true)
        setSection1_1(null)
        setSection1_3(null)
        setSection1_4(null)
    }
    const clickSection1_3 = () =>{
        setSection1_3(true)
        setSection1_1(null)
        setSection1_2(null)
        setSection1_4(null)
    }
    const clickSection1_4 = () =>{
        setSection1_4(true)
        setSection1_1(null)
        setSection1_2(null)
        setSection1_3(null)
    }
  return (
    <div>
        <div className='mount3'> 
                <Tab.Container id="">
                <Row className="justify-content-md-center">
                <Nav variant="pills" className="justify-content-center">
                  <Nav.Item>
                     <Nav.Link eventKey="1" onClick={clickSection1_1}>도심</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="2" onClick={clickSection1_2}>강남</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="3"  onClick={clickSection1_3}>신촌마포 </Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="4" onClick={clickSection1_4}>기타</Nav.Link>
                  </Nav.Item>
              </Nav>
                </Row>
                 </Tab.Container></div>
            {
                section1_1 ? <Section1_1></Section1_1> : null
            }
            {
                section1_2 ? <Section1_2></Section1_2> : null
            }
            {
                section1_3 ? <Section1_3></Section1_3> : null
            }
            {
                section1_4 ? <Section1_4></Section1_4> : null
            }
    </div>
  )
}

export default Section1