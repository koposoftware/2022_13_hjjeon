
import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../../bootstrap.css'
import axios from 'axios'
import Section2_1 from './Section2_1';
import Section2_2 from './Section2_2';
import Section2_3 from './Section2_3';
import Section2_4 from './Section2_4';


function Section2() {
    
    const[section2_1,setSection2_1] = useState(null)
    const[section2_2,setSection2_2] = useState(null)
    const[section2_3,setSection2_3] = useState(null)
    const[section2_4,setSection2_4] = useState(null)

    const clickSection2_1 = () =>{
        setSection2_1(true)
        setSection2_2(null)
        setSection2_3(null)
        setSection2_4(null)
    }
    const clickSection2_2 = () =>{
        setSection2_2(true)
        setSection2_1(null)
        setSection2_3(null)
        setSection2_4(null)
    }
    const clickSection2_3 = () =>{
        setSection2_3(true)
        setSection2_1(null)
        setSection2_2(null)
        setSection2_4(null)
    }
    const clickSection2_4 = () =>{
        setSection2_4(true)
        setSection2_1(null)
        setSection2_2(null)
        setSection2_3(null)
    }
  return (
    <div>
        <div className='mount3'> 
                <Tab.Container id="">
                <Row className="justify-content-md-center">
                <Nav variant="pills" className="justify-content-center">
                  <Nav.Item>
                     <Nav.Link eventKey="1" onClick={clickSection2_1}>도심</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="2" onClick={clickSection2_2}>강남</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="3"  onClick={clickSection2_3}>영등포신촌</Nav.Link>
                  </Nav.Item>
                  <Nav.Item>
                    <Nav.Link eventKey="4" onClick={clickSection2_4}>기타</Nav.Link>
                  </Nav.Item>
              </Nav>
                </Row>
                 </Tab.Container></div>
            {
                section2_1 ? <Section2_1></Section2_1> : null 
            }
            {
                section2_2 ? <Section2_2></Section2_2> : null
            }
            {
                section2_3 ? <Section2_3></Section2_3> : null
            }
            {
                section2_4 ? <Section2_4></Section2_4> : null
            }
    </div>
  )
}

export default Section2