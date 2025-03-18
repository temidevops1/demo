<<<<<<< HEAD
import React, { useEffect, useState } from 'react';
import Header from './components/Header';
import StatsCard from './components/StatsCard';
import LineChart from './components/LineChart';
import Footer from './components/Footer';

function App() {
  const [stats, setStats] = useState({ cases: 0, deaths: 0, recovered: 0 });
  const [historicalData, setHistoricalData] = useState(null);

  useEffect(() => {
    // Fetch current statistics
    fetch('https://disease.sh/v3/covid-19/all')
      .then((response) => response.json())
      .then((data) => {
        setStats({
          cases: data.cases,
          deaths: data.deaths,
          recovered: data.recovered,
        });
      });

    // Fetch historical data for charts
    fetch('https://disease.sh/v3/covid-19/historical/all?lastdays=30')
      .then((response) => response.json())
      .then((data) => {
        setHistoricalData({
          labels: Object.keys(data.cases),
          datasets: [
            {
              label: 'Cases',
              data: Object.values(data.cases),
              borderColor: 'rgba(75, 192, 192, 1)',
              backgroundColor: 'rgba(75, 192, 192, 0.2)',
            },
            {
              label: 'Deaths',
              data: Object.values(data.deaths),
              borderColor: 'rgba(255, 99, 132, 1)',
              backgroundColor: 'rgba(255, 99, 132, 0.2)',
            },
            {
              label: 'Recovered',
              data: Object.values(data.recovered),
              borderColor: 'rgba(153, 102, 255, 1)',
              backgroundColor: 'rgba(153, 102, 255, 0.2)',
            },
          ],
        });
      });
  }, []);

  return (
    <div className="min-h-screen flex flex-col">
      <Header />
      <main className="flex-grow container mx-auto p-6">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
          <StatsCard title="Total Cases" value={stats.cases} color="text-blue-600" />
          <StatsCard title="Total Deaths" value={stats.deaths} color="text-red-600" />
          <StatsCard title="Total Recovered" value={stats.recovered} color="text-green-600" />
        </div>
        {historicalData && (
          <div className="bg-white p-6 rounded-lg shadow-lg">
            <LineChart data={historicalData} title="Last 30 Days Trends" />
          </div>
        )}
      </main>
      <Footer />
=======
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
>>>>>>> 10a5264 (Initialize project using Create React App)
    </div>
  );
}

<<<<<<< HEAD
export default App;
=======
export default App;
>>>>>>> 10a5264 (Initialize project using Create React App)
