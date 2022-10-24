import React, { useEffect, useState } from 'react'
import Col from 'react-bootstrap/Col';
import Nav from 'react-bootstrap/Nav';
import Row from 'react-bootstrap/Row';
import Tab from 'react-bootstrap/Tab';

import '../bootstrap.css'
import axios from 'axios'
import Section1 from '././section1/Section1';
import Section2 from '././section2/Section2';
import Section3 from '././section3/Section3'
import Section4 from './section4/Section4';
import Section5 from './section5/Section5';
function Tabs() {

    const [section1,setSection1] = useState(null)
    const [section2,setSection2] = useState(null)
    const [section3,setSection3] = useState(null)
    const [section4,setSection4] = useState(null)
    const [section5,setSection5] = useState(null)
    
    const clickSection1 = () =>{
        setSection1(true);
        setSection2(null);
        setSection3(null)
        setSection4(null)
        setSection5(null)

    }
    
    const clickSection2 = () =>{
        setSection1(null);
        setSection2(true)
        setSection3(null)
        setSection4(null)
        setSection5(null)

    }

    const clickSection3 = () =>{
        setSection1(null);
        setSection2(null);
        setSection3(true)
        setSection4(null)
        setSection5(null)
    }

    const clickSection4 = () =>{
        setSection1(null);
        setSection2(null);
        setSection3(null)
        setSection4(true)
        setSection5(null)

    }

    const clickSection5 = () =>{
        setSection1(null);
        setSection2(null);
        setSection3(null)
        setSection4(null)
        setSection5(true)

    }

    const formatParamsIntoQueryString = (params) =>{
	    const keys = Object.keys(params)
	    let result ="?"
	    keys.map((key,idx) =>{
	        result = result + `${key}` + "=" + params[key]
	        if(idx !== keys.length-1){
	            result = result + "&"
	        }
	    })
	    return result
	}

  return (
    <div className="mount3">
      <Tab.Container id="first">
          <Row className="justify-content-md-center">
          <Nav variant="pills" className="justify-content-center">
            <Nav.Item>
               <Nav.Link eventKey="1" onClick={clickSection1} >2013-2016</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link eventKey="2" onClick={clickSection2}>2017-2018</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link eventKey="3" onClick={clickSection3}>2019</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link eventKey="4" onClick={clickSection4}>2020</Nav.Link>
            </Nav.Item>
            <Nav.Item>
              <Nav.Link eventKey="5" onClick={clickSection5}>2021-2022</Nav.Link>
            </Nav.Item>
            
        
        </Nav>
          </Row>
           </Tab.Container>
            
            {
                section1 ?  <Section1></Section1>: null
            }

            {
              section2 ? <Section2></Section2>:null 
            }

            {
              section3 ? <Section3></Section3>:null 
            }

            {
              section4 ? <Section4></Section4>:null 
            }
            {
              section5 ? <Section5></Section5>:null 
            }
           
    </div>
  )
}

export default Tabs