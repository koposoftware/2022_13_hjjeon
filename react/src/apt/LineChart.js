
import Chart from "react-apexcharts";

import React from 'react'

function LineChart(props) {
  return (
    <div>
       <div style={{ width: '600px', height: '450px', margin: '0 auto' }}>
      <Chart
        options={
          {
                    chart: {
                      height: 200,
                      type: 'line',
                      dropShadow: {
                        enabled: true,
                        color: '#000',
                        top: 18,
                        left: 7,
                        blur: 10,
                        opacity: 0.5
                      },
                      toolbar: {
                        show: true,
                        offsetY:'-10',
                       
                      },
                      zoom: {
                        enabled: false
                      },
                      
                    },
                    colors: ['#77B6EA', '#545454'],
                    dataLabels: {
                      enabled: true,
                    },
                    stroke: {
                      curve: 'smooth'
                    },
                    title: {
                      text: props.data[0].LOCATION_NAME +' 아파트 가격지수',
                      align: 'left'
                    },
                    grid: {
                      borderColor: '#e7e7e7',
                      row: {
                        colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                        opacity: 0.5
                      },
                    },
                    markers: {
                      size: 1
                    },
                    xaxis: {
                      categories: [
                        props.data[0].RESEARCH_DATE, 
                        props.data[2].RESEARCH_DATE, 
                        props.data[4].RESEARCH_DATE, 
                        props.data[6].RESEARCH_DATE, 
                        props.data[8].RESEARCH_DATE, 
                        props.data[10].RESEARCH_DATE,
                        props.data[12].RESEARCH_DATE,
                        props.data[14].RESEARCH_DATE,
                        props.data[16].RESEARCH_DATE,
                        props.data[18].RESEARCH_DATE,
                        
                      ],
                      title: {
                        text: '날짜'
                      }
                    },
                    yaxis: {
                      title: {
                        text: '가격 지수',
                        offsetX: 10 
                      },
                      min: 60,
                      max: 110,
                        labels: {
          show: true,
          align: 'right',
          minWidth: 0,
          maxWidth: 160,
          style: {
              colors: [],
              fontSize: '12px',
              fontFamily: 'Helvetica, Arial, sans-serif',
              fontWeight: 400,
              cssClass: 'apexcharts-yaxis-label',
          },
          offsetX: -12,
          offsetY: 0,
          rotate: 0,
          
      },
                      
                    },
                    legend: {
                      position: 'top',
                      horizontalAlign: 'right',
                      floating: true,
                      offsetY: -25,
                      offsetX: -5
                    }
                  }
        }
        series={
          [
                    {
                      name: "매매",
                      data: [
                        props.data[0].POINT, 
                        props.data[2].POINT, 
                        props.data[4].POINT, 
                        props.data[6].POINT, 
                        props.data[8].POINT, 
                        props.data[10].POINT,
                        props.data[12].POINT,
                        props.data[14].POINT,
                        props.data[16].POINT,
                        props.data[18].POINT
                    
                      ]
                    },
                    {
                      name: "전세",
                      data: [
                        props.data[1].POINT,
                        props.data[3].POINT,
                        props.data[5].POINT,
                        props.data[7].POINT,
                        props.data[9].POINT,
                        props.data[11].POINT,
                        props.data[13].POINT,
                        props.data[15].POINT,
                        props.data[17].POINT,
                        props.data[19].POINT
                      ]
                    }
                  ]
        }
      />
      </div>
    </div>
  )
}

export default LineChart