import yfinance as yf

def get_stock_data(stock):
    data = yf.Ticker(stock)
    info = data.info
    
    return {
        "name": info.get("longName", "N/A"),
        "sector": info.get("sector", "N/A"),
        "marketCap": info.get("marketCap", "N/A"),
        "summary": info.get("longBusinessSummary", "N/A")
    }

def analyze_stock(data):
    return f"""
📊 Overview:
{data['name']} is a company in the {data['sector']} sector.

👍 Pros:
- Strong market presence
- High market cap: {data['marketCap']}

⚠️ Risks:
- Market volatility
- Competitive industry

💡 Final Suggestion:
Good for long-term investment (demo analysis).
"""