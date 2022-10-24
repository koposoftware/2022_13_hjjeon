import React, { useEffect, useState } from 'react'
import axios from 'axios'



function Detail() {
    const [location,setLocation] = useState([]);
    const [data,setData] = useState([])
    const handleSearch = (e) => {
        setLocation(e.target.value)
       
    }

    const fetchLocationName = async() => {
        console.log('location : ' + location)
        const response = await axios.post('http://localhost:5000/detail',{name:location});
        console.log(response.data.rows)
        setData(response.data.rows)
    }

    // useEffect(()=>{
    //     axios('http://localhost:5000/customers')
    //     .then(response=>{
    //         if(response.status === 200){
    //             setData(response.data.rows)
    //             console.log(data)
    //         }
    //     })
    //     .catch(err=>{
  
    //     })
    // },[])
    return (
        <div>
            {/* CustomerList Component
            {
                data.length>0 &&
                data.map((item,index)=><div key={index}>{item[1]}</div>)
            } */}
            <h1>지역 검색</h1>
            <select id="location-select" onChange={handleSearch}>
                <option value="서울특별시 강남구">강남구</option>
                <option value="서울특별시 강동구">강동구</option>
                <option value="서울특별시 강북구">강북구</option>       
                <option value="서울특별시 강서구">강서구</option>
                <option value="서울특별시 관악구">관악구</option>
                <option value="서울특별시 광진구">광진구</option>
                <option value="서울특별시 구로구">구로구</option>
                <option value="서울특별시 금천구">금천구</option>
                <option value="서울특별시 노원구">노원구</option>
                <option value="서울특별시 도봉구">도봉구</option>
                <option value="서울특별시 동대문구">동대문구</option>    
                <option value="서울특별시 동작구">동작구</option>
                <option value="서울특별시 마포구">마포구</option>
                <option value="서울특별시 서대문구">서대문구</option>
                <option value="서울특별시 서초구">서초구</option>
                <option value="서울특별시 성동구">성동구</option>
                <option value="서울특별시 성북구">성북구</option>
                <option value="서울특별시 송파구">송파구</option>
                <option value="서울특별시 양천구">양천구</option>
                <option value="서울특별시 영등포구">영등포구</option>
                <option value="서울특별시 용산구">용산구</option>
                <option value="서울특별시 은평구">은평구</option>
                <option value="서울특별시 종로구">종로구</option>
                <option value="서울특별시 중구">중구</option>
                <option value="서울특별시 중랑구">중랑구</option>
            </select>
            <button id="location-search" onClick={fetchLocationName}>검색</button>
           
            <div>
                {
                    //data.map((item,index)=><div key={index}>{item[3].toFixed(2)}</div>)
                }
            </div>
            <div style={{ width: '1000px', height: '500px', margin: '0 auto' }}>
                {   
                    /*
                    <ResponsiveLine
                    data={[
                     {
                         id: '매매',
                         data: [
                             { x: '2012', y: data[0][3].toFixed(2) },
                             { x: '2013', y: data[2][3].toFixed(2) },
                             { x: '2014', y: data[4][3].toFixed(2) },
                             { x: '2015', y: data[6][3].toFixed(2) },
                             { x: '2016', y: data[8][3].toFixed(2) },
                             { x: '2017', y: data[10][3].toFixed(2) },
                             { x: '2018', y: data[12][3].toFixed(2) },
                             { x: '2019', y: data[14][3].toFixed(2) },
                             { x: '2020', y: data[16][3].toFixed(2) },
                             { x: '2021', y: data[18][3].toFixed(2) },
                             { x: '2022', y: data[20][3].toFixed(2) }
                         ],
                     },
                     {
                        id: '전세',
                        data: [
                            { x: '2012', y: data[1][3].toFixed(2) },
                            { x: '2013', y: data[3][3].toFixed(2) },
                            { x: '2014', y: data[5][3].toFixed(2) },
                            { x: '2015', y: data[7][3].toFixed(2) },
                            { x: '2016', y: data[9][3].toFixed(2) },
                            { x: '2017', y: data[11][3].toFixed(2) },
                            { x: '2018', y: data[13][3].toFixed(2) },
                            { x: '2019', y: data[15][3].toFixed(2) },
                            { x: '2020', y: data[17][3].toFixed(2) },
                            { x: '2021', y: data[19][3].toFixed(2) },
                            { x: '2022', y: data[21][3].toFixed(2) }
                        ],
                    },
                 ]}
                 margin={{ top: 50, right: 110, bottom: 50, left: 60 }}
                 theme={{
                    fontSize: 20
                 }}
                 xScale={{
                     type: 'time',
                     format: '%Y',
                     useUTC: false,
                     precision: 'day',
                 }}
                 xFormat="time:%Y"
                 yScale={{
                     type: 'linear',
                     stacked: false,
                     min:50,
                     max:110,
                 }}
                 axisLeft={{
                     legend: '',
                     legendOffset: 12,
                     tickPadding: 25,
                 }}
                 axisBottom={{
                     format: '%Y',
                     tickValues: 'every 1 years',
                     legend: '',
                     legendOffset: -12,
                 }}
                 enablePointLabel={false}
                 pointSize={16}
                 pointBorderWidth={1}
                 pointBorderColor={{
                     from: 'color',
                     modifiers: [['darker', 0.3]],
                 }}
                 useMesh={true}
                 enableCrosshair={false}
                 enableSlices="x"
                 legends={[
                    {
                        anchor: 'bottom-right',
                        direction: 'column',
                        justify: false,
                        translateX: 100,
                        translateY: 0,
                        itemsSpacing: 20,
                        itemDirection: 'left-to-right',
                        itemWidth: 80,
                        itemHeight: 20,
                        itemOpacity: 0.75,
                        symbolSize: 30,
                        symbolShape: 'circle',
                        symbolBorderColor: 'rgba(0, 0, 0, .5)',
                        effects: [
                            {
                                on: 'hover',
                                style: {
                                    itemBackground: 'rgba(0, 0, 0, .03)',
                                    itemOpacity: 1
                                }
                            }
                        ]
                    }
                ]}
           
             />*/
                }
</div>
            
        </div>
    )
}

export default Detail