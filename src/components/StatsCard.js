export default function StatsCard({ title, value, color }) {
    return (
      <div className={`bg-white p-6 rounded-lg shadow-lg text-center ${color}`}>
        <h2 className="text-xl font-semibold mb-2">{title}</h2>
        <p className="text-3xl font-bold">{value.toLocaleString()}</p>
      </div>
    );
  }