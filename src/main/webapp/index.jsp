<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ page
import="java.time.LocalDateTime" %> <%@ page
import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Web Application</title>
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
      .badge {
        display: inline-block;
        background: #27ae60;
        color: white;
        padding: 10px 25px;
        border-radius: 25px;
        font-weight: bold;
        margin-bottom: 20px;
      }
      h1 {
        color: #2c3e50;
        margin-bottom: 15px;
        font-size: 2.8em;
        text-align: center;
      }
      .subtitle {
        color: #7f8c8d;
        font-size: 1.2em;
        margin-bottom: 30px;
        text-align: center;
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
      }
      .info-card h3 {
        color: #2c3e50;
        margin-bottom: 10px;
        font-size: 1em;
      }
      .info-card p {
        color: #34495e;
        font-size: 1.1em;
        font-weight: 600;
      }
      .tech-badge {
        display: inline-block;
        background: #3498db;
        color: white;
        padding: 10px 20px;
        border-radius: 20px;
        font-size: 0.9em;
        font-weight: 600;
        margin: 5px;
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
      }
      .btn:hover {
        background: #2980b9;
      }
      .footer {
        margin-top: 50px;
        padding-top: 30px;
        border-top: 2px solid #ecf0f1;
        text-align: center;
        color: #7f8c8d;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div style="text-align: center">
        <div class="badge">✅ DEPLOYED SUCCESSFULLY</div>
        <h1>🚀 Simple Web Application</h1>
        <p class="subtitle">Automated Deployment with Jenkins CI/CD</p>
      </div>

      <div class="info-grid">
        <div class="info-card">
          <h3>📦 Application</h3>
          <p>Simple Web App</p>
        </div>
        <div class="info-card">
          <h3>📅 Version</h3>
          <p>1.0</p>
        </div>
        <div class="info-card">
          <h3>⏰ Time</h3>
          <p>
            <%=
            LocalDateTime.now().format(DateTimeFormatter.ofPattern("HH:mm:ss"))
            %>
          </p>
        </div>
        <div class="info-card">
          <h3>🔧 Build Tool</h3>
          <p>Maven</p>
        </div>
        <div class="info-card">
          <h3>🌐 Server</h3>
          <p>Tomcat</p>
        </div>
        <div class="info-card">
          <h3>🔄 CI/CD</h3>
          <p>Jenkins</p>
        </div>
      </div>

      <div style="text-align: center; margin: 30px 0">
        <span class="tech-badge">☕ Java</span>
        <span class="tech-badge">🎯 JSP/Servlet</span>
        <span class="tech-badge">🔧 Jenkins</span>
        <span class="tech-badge">📦 Maven</span>
        <span class="tech-badge">🐱 Tomcat</span>
      </div>

      <div style="text-align: center; margin: 40px 0">
        <a href="hello" class="btn">👋 Test Servlet</a>
        <a href="about.jsp" class="btn">ℹ️ About</a>
      </div>

      <div class="footer">
        <p>
          <strong>🎓 Jenkins Assignment: Deploy to Container Plugin</strong>
        </p>
        <p>Automated deployment using Jenkins CI/CD pipeline</p>
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
