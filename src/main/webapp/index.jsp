<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ page
import="java.time.LocalDateTime" %> <%@ page
import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Web Application - Home</title>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }

      body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
      }

      .container {
        background: white;
        border-radius: 20px;
        box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
        padding: 50px;
        max-width: 900px;
        width: 100%;
      }

      .header {
        text-align: center;
        margin-bottom: 40px;
      }

      .badge {
        display: inline-block;
        background: #27ae60;
        color: white;
        padding: 10px 25px;
        border-radius: 25px;
        font-weight: bold;
        margin-bottom: 20px;
        animation: pulse 2s infinite;
        font-size: 0.9em;
      }

      @keyframes pulse {
        0%,
        100% {
          transform: scale(1);
        }
        50% {
          transform: scale(1.05);
        }
      }

      h1 {
        color: #2c3e50;
        margin-bottom: 15px;
        font-size: 2.8em;
      }

      .subtitle {
        color: #7f8c8d;
        font-size: 1.2em;
        margin-bottom: 30px;
      }

      .info-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        gap: 20px;
        margin: 30px 0;
      }

      .info-card {
        background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
        padding: 25px;
        border-radius: 12px;
        text-align: center;
        transition: transform 0.3s, box-shadow 0.3s;
      }

      .info-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
      }

      .info-card h3 {
        color: #2c3e50;
        margin-bottom: 10px;
        font-size: 1em;
        text-transform: uppercase;
        letter-spacing: 1px;
      }

      .info-card p {
        color: #34495e;
        font-size: 1.1em;
        font-weight: 600;
      }

      .info-card .emoji {
        font-size: 2em;
        display: block;
        margin-bottom: 10px;
      }

      .tech-stack {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 12px;
        margin: 30px 0;
      }

      .tech-badge {
        background: #3498db;
        color: white;
        padding: 10px 20px;
        border-radius: 20px;
        font-size: 0.9em;
        font-weight: 600;
        transition: all 0.3s;
      }

      .tech-badge:hover {
        background: #2980b9;
        transform: scale(1.1);
      }

      .btn-group {
        text-align: center;
        margin-top: 40px;
      }

      .btn {
        display: inline-block;
        padding: 15px 35px;
        margin: 10px;
        background: #3498db;
        color: white;
        text-decoration: none;
        border-radius: 10px;
        font-weight: bold;
        font-size: 1.1em;
        transition: all 0.3s;
        box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
      }

      .btn:hover {
        background: #2980b9;
        transform: translateY(-3px);
        box-shadow: 0 6px 20px rgba(52, 152, 219, 0.4);
      }

      .btn.secondary {
        background: #9b59b6;
        box-shadow: 0 4px 15px rgba(155, 89, 182, 0.3);
      }

      .btn.secondary:hover {
        background: #8e44ad;
      }

      .footer {
        margin-top: 50px;
        padding-top: 30px;
        border-top: 2px solid #ecf0f1;
        text-align: center;
      }

      .footer p {
        color: #7f8c8d;
        margin: 8px 0;
        font-size: 0.95em;
      }

      .footer .highlight {
        color: #3498db;
        font-weight: bold;
      }

      .form-container {
        background: #f8f9fa;
        padding: 30px;
        border-radius: 12px;
        margin: 30px 0;
      }

      .form-container h2 {
        color: #2c3e50;
        margin-bottom: 20px;
        text-align: center;
      }

      .form-group {
        margin-bottom: 20px;
      }

      .form-group label {
        display: block;
        color: #555;
        margin-bottom: 8px;
        font-weight: 600;
      }

      .form-group input {
        width: 100%;
        padding: 12px;
        border: 2px solid #ddd;
        border-radius: 8px;
        font-size: 1em;
        transition: border-color 0.3s;
      }

      .form-group input:focus {
        outline: none;
        border-color: #3498db;
      }

      .form-group button {
        width: 100%;
        padding: 12px;
        background: #27ae60;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 1.1em;
        font-weight: bold;
        cursor: pointer;
        transition: background 0.3s;
      }

      .form-group button:hover {
        background: #229954;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="header">
        <div class="badge">✅ DEPLOYED SUCCESSFULLY</div>
        <h1>🚀 Simple Web Application</h1>
        <p class="subtitle">Automated Deployment with Jenkins CI/CD</p>
      </div>

      <div class="info-grid">
        <div class="info-card">
          <span class="emoji">📦</span>
          <h3>Application</h3>
          <p>Simple Web App</p>
        </div>

        <div class="info-card">
          <span class="emoji">📅</span>
          <h3>Version</h3>
          <p>1.0</p>
        </div>

        <div class="info-card">
          <span class="emoji">⏰</span>
          <h3>Deployed At</h3>
          <p>
            <%=
            LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
            %>
          </p>
        </div>

        <div class="info-card">
          <span class="emoji">🔧</span>
          <h3>Build Tool</h3>
          <p>Maven</p>
        </div>

        <div class="info-card">
          <span class="emoji">🌐</span>
          <h3>Server</h3>
          <p>Tomcat</p>
        </div>

        <div class="info-card">
          <span class="emoji">🔄</span>
          <h3>CI/CD</h3>
          <p>Jenkins</p>
        </div>
      </div>

      <div class="tech-stack">
        <span class="tech-badge">☕ Java</span>
        <span class="tech-badge">🎯 JSP/Servlet</span>
        <span class="tech-badge">🔧 Jenkins</span>
        <span class="tech-badge">📦 Maven</span>
        <span class="tech-badge">🐱 Tomcat</span>
        <span class="tech-badge">🚀 CI/CD</span>
      </div>

      <div class="form-container">
        <h2>🎯 Test Personalized Greeting</h2>
        <form action="hello" method="get">
          <div class="form-group">
            <label for="name">Enter Your Name:</label>
            <input
              type="text"
              id="name"
              name="name"
              placeholder="Your name here..."
              required
            />
          </div>
          <div class="form-group">
            <button type="submit">🚀 Get Greeting</button>
          </div>
        </form>
      </div>

      <div class="btn-group">
        <a href="hello" class="btn">👋 Test Servlet</a>
        <a href="about.jsp" class="btn secondary">ℹ️ About</a>
      </div>

      <div class="footer">
        <p>
          <strong class="highlight"
            >🎓 Jenkins Assignment: Deploy to Container Plugin</strong
          >
        </p>
        <p>
          This application demonstrates automated deployment using Jenkins CI/CD
          pipeline
        </p>
        <p style="margin-top: 15px">
          <strong>Deployment Date:</strong> <%=
          LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd
          HH:mm:ss")) %>
        </p>
        <p><strong>Session ID:</strong> <%= session.getId() %></p>
      </div>
    </div>
  </body>
</html>
