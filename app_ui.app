import streamlit as st
from app import get_stock_data, analyze_stock

st.set_page_config(page_title="AI Equity Research Tool")

st.title("📊 AI Equity Research Tool")

stock = st.text_input("Enter Stock Symbol (e.g., TCS.NS)")

if st.button("Analyze"):

    if stock:
        try:
            data = get_stock_data(stock)

            st.subheader("📊 Company Details")
            st.write(f"**Name:** {data['name']}")
            st.write(f"**Sector:** {data['sector']}")
            st.write(f"**Market Cap:** {data['marketCap']}")

            st.subheader("🤖 AI Analysis")
            result = analyze_stock(data)
            st.write(result)

        except Exception as e:
            st.error("Error fetching stock data. Try another symbol.")

    else:
        st.warning("Please enter a stock symbol")
