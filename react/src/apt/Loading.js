import React from 'react'
import Spinner from 'react-bootstrap/Spinner';


function Loading(props) {
  return (
    <div>
        <div style={{ width: '700px', height: '400px', margin: '0 auto',display:'flex',justifyContent:'flex-start',alignItems:'center',position:'absolute'}}>
            <Spinner animation="border" role="status">
                <span className="visually-hidden">Loading...</span>
            </Spinner>
        </div>  
  </div>
  )
}

export default Loading