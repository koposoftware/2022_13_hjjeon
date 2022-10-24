
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
                      text: props.data[0].location +' 중대형상가 투자수익률',
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
                        props.data[0].researchDate, 
                        props.data[1].researchDate, 
                        props.data[2].researchDate, 
                        props.data[3].researchDate, 
                        props.data[4].researchDate, 
                        props.data[5].researchDate,
                        props.data[6].researchDate,
                        props.data[7].researchDate
                      ],
                      title: {
                        text: '분기'
                      }
                    },
                    yaxis: {
                      title: {
                        text: '투자수익률',
                        offsetX: 9 
                      },
                      min: 0,
                      max: 4,
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
                      name: "투자수익률",
                      data: [
                        props.data[0].earningRate, 
                        props.data[1].earningRate, 
                        props.data[2].earningRate, 
                        props.data[3].earningRate, 
                        props.data[4].earningRate, 
                        props.data[5].earningRate,
                        props.data[6].earningRate,
                        props.data[7].earningRate,
                      ]
                    },
                   
                  ]
        }
      />
      </div>
    </div>
  )
}

export default LineChart