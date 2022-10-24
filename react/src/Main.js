import React, {  useState } from 'react';
import Tabs from './roi/Tabs';
import AptTabs from './apt/AptTabs';
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBuilding } from "@fortawesome/free-solid-svg-icons";
import Button from 'react-bootstrap/Button';
import OverlayTrigger from 'react-bootstrap/OverlayTrigger';
import Tooltip from 'react-bootstrap/Tooltip';
import Popover from 'react-bootstrap/Popover';
function Main(props) {
    const [roi,setRoi] = useState(null)
    const [apt,setApt] = useState(null)
    const clickRoi = () =>{
        setRoi(true)
        setApt(null)
    }
    const clickApt = () =>{
        setApt(true)
        setRoi(null)
    }
    
    const renderTooltip1 = (props) => (
       
            <Popover id="popover-basic" {...props}>
            <Popover.Header as="h3">투자수익률이란?</Popover.Header>
            <Popover.Body>
            분기별 투자수익률은 3개월간의 부동산 보유에 따른 투자성과를 나타내는 것으로 소득수익률과 자본수익률을 합산하여 산출합니다.
    - 소득수익률은 3개월간의 임대수익률을 의미하며, 부동산가격(기초자산가액) 대비 3개월간의 순영업소득(NOI)의 비율로 산출합니다.
    * 순영업소득(임대소득 등 - 운영경비) ÷ 기초(전분기)자산가액
    - 자본수익률은 3개월간의 부동산가격 증감률을 의미하며, 부동산 산정액의 기초(전분기)자산가액과 기말(현분기)자산가액의 차이를 기초(전분기)자산가액으로 나누어 산출합니다.
    * 자본이득[기말(현분기)자산가액 - 기초(전분기)자산가액] ÷ 기초(전분기)자산가액
            </Popover.Body>
        </Popover>
     
      );
    
    const renderTooltip2 = (props) => (
        <Popover id="popover-basic" {...props}>
        <Popover.Header as="h3">가격지수란?</Popover.Header>
        <Popover.Body>
        주택가격지수는 기준시점 대비 현재시점의 가격비를 기준시점이 100인 수치로 환산한 값입니다. 주택가격지수를 일정시점과 비교하는 개념으로 변동률 또는 증감률이라는 개념을 사용하는데, 이는 기준시점과 비교시점, 또는 비교시점과 비교시점의 평균적인 가격 증감율을 판단하는 지표로 사용할 수 있습니다.
        </Popover.Body>
    </Popover>
      );
    return (
        <div>
            <h3 style={{marginTop:30,marginBottom:30}}>부동산시세 확인</h3>
            <div style={{display:'flex',justifyContent:'center'}}>
                <div style={{marginRight:15}}>
                    <img src="img/building.gif" style={{height:100,width:120}}></img>
                    <div>
                        <OverlayTrigger
                        placement="bottom"
                        delay={{ show: 250, hide: 400 }}
                        overlay={renderTooltip1}
                        >
                            <Button variant="outline-success" style={{marginBottom:20}} onClick={clickRoi}>중대형상가 투자수익률</Button>
                        </OverlayTrigger>
                    </div>
                </div>

                <div style={{marginLeft:15}}>
                    <img src="img/apartment.gif" style={{height:100,width:120}}></img>
                    <div>
                        <OverlayTrigger
                        placement="bottom"
                        delay={{ show: 250, hide: 400 }}
                        overlay={renderTooltip2}
                        >
                            <Button variant="outline-success" style={{marginBottom:20}} onClick={clickApt}>아파트 가격지수</Button>
                        </OverlayTrigger>
                    </div>
                </div>
            </div>

        

            {
                roi ? <Tabs></Tabs> : null
            }
            {
                apt ? <AptTabs></AptTabs> : null
            }
        </div>
    );
}

export default Main;