import logo from './logo.svg';
import './App.css';
import CoustomerList from './apt/CounstomerList'
import Detail from './apt/Detail';
import AptTabs from './apt/AptTabs'
import LineChart from './apt/LineChart';
import RoiTabs from './roi/Tabs'
import Main from './Main'
import {BrowserRouter as Router,Route,Routes,Link} from 'react-router-dom'
import Loading from './apt/Loading';
function App() {
  return (
    <div className="App">
     
  <Router>
      {/* <Link to='/CustomerList'>empList</Link>
      <div></div>
      <Link to='/Detail'>detail</Link> */}
      <Routes>
        <Route path='/Detail' element={<Detail/>}/>
        <Route path='/CustomerList' element={<CoustomerList/>}/>
        <Route path='/LineChart' element={<LineChart/>}/>
        <Route path='/Tabs' element={<AptTabs></AptTabs>}/>
        <Route path='/Loading' element={<Loading></Loading>}/>
        <Route path='/roi/Tabs' element={<RoiTabs></RoiTabs>}/>
        <Route path='/main' element={<Main></Main>}/>
      </Routes> 
  </Router>

    </div>
  );
}

export default App;
