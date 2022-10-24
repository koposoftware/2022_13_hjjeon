
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import axios from 'axios'
import Section4_1 from './Section4_1';
import Section4_2 from './Section4_2';
import Section4_3 from './Section4_3';
import Section4_4 from './Section4_4';



function Section4() {
    
    const[section4_1,setSection4_1] = useState(null)
    const[section4_2,setSection4_2] = useState(null)
    const[section4_3,setSection4_3] = useState(null)
    const[section4_4,setSection4_4] = useState(null)

    const clickSection4_1 = () =>{
        setSection4_1(true)
        setSection4_2(null)
        setSection4_3(null)
        setSection4_4(null)
    }
    const clickSection4_2 = () =>{
        setSection4_2(true)
        setSection4_1(null)
        setSection4_3(null)
        setSection4_4(null)
    }
    const clickSection4_3 = () =>{
        setSection4_3(true)
        setSection4_1(null)
        setSection4_2(null)
        setSection4_4(null)
    }
    const clickSection4_4 = () =>{
        setSection4_4(true)
        setSection4_1(null)
        setSection4_2(null)
        setSection4_3(null)
    }
  return (
    <div>
        <div className='mount3'> 
                <Tab.Container id="">
                <Row className="justify-content-md-center">
                <Nav variant="pills" className="justify-content-center">
                  <Nav.Item>
                     <Nav.Link eventKey="1" onClick={clickSection4_1}>도심</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="2" onClick={clickSection4_2}>강남</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="3"  onClick={clickSection4_3}>영등포신촌</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="4" onClick={clickSection4_4}>기타</Nav.Link>
                  </Nav.Item>
              </Nav>
                </Row>
                 </Tab.Container></div>
            {
                section4_1 ? <Section4_1></Section4_1> : null 
            }
            {
                section4_2 ? <Section4_2></Section4_2> : null
            }
            {
                section4_3 ? <Section4_3></Section4_3> : null
            }
            {
                section4_4 ? <Section4_4></Section4_4> : null
            }
    </div>
  )
}

export default Section4