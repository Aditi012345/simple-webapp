<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>About - Simple Web Application</title>
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
        padding: 40px 20px;
      }

      .container {
        background: white;
        border-radius: 20px;
        box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
        padding: 50px;
        max-width: 900px;
        margin: 0 auto;
      }

      h1 {
        color: #2c3e50;
        margin-bottom: 30px;
        font-size: 2.5em;
        text-align: center;
      }

      h2 {
        color: #3498db;
        margin-top: 30px;
        margin-bottom: 15px;
        font-size: 1.8em;
        border-bottom: 3px solid #3498db;
        padding-bottom: 10px;
      }

      p {
        color: #555;
        line-height: 1.8;
        margin-bottom: 15px;
        font-size: 1.1em;
      }

      .section {
        margin: 30px 0;
      }

      .features {
        background: #f8f9fa;
        padding: 25px;
        border-radius: 12px;
        margin: 20px 0;
      }

      .features ul {
        list-style: none;
        padding: 0;
      }

      .features li {
        padding: 12px 0;
        color: #555;
        border-bottom: 1px solid #ecf0f1;
        padding-left: 30px;
        position: relative;
      }

      .features li:before {
        content: "✓";
        position: absolute;
        left: 0;
        color: #27ae60;
        font-weight: bold;
        font-size: 1.2em;
      }

      .features li:last-child {
        border-bottom: none;
      }

      .tech-info {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
        gap: 20px;
        margin: 20px 0;
      }

      .tech-card {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        padding: 25px;
        border-radius: 12px;
        text-align: center;
      }

      .tech-card h3 {
        margin-bottom: 15px;
        font-size: 1.3em;
      }

      .tech-card p {
        color: rgba(255, 255, 255, 0.9);
        font-size: 0.95em;
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
        transition: all 0.3s;
        text-align: center;
      }

      .btn:hover {
        background: #2980b9;
        transform: translateY(-2px);
      }

      .btn-group {
        text-align: center;
        margin-top: 40px;
      }

      .highlight-box {
        background: #fff3cd;
        border-left: 5px solid #ffc107;
        padding: 20px;
        margin: 20px 0;
        border-radius: 8px;
      }

      .highlight-box p {
        color: #856404;
        margin: 0;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>ℹ️ About This Application</h1>

      <div class="section">
        <h2>📋 Project Overview</h2>
        <p>
          This is a <strong>Simple Java Web Application</strong> created to
          demonstrate automated deployment using Jenkins CI/CD pipeline with the
          "Deploy to container" plugin.
        </p>
        <p>
          The application showcases the complete workflow of continuous
          integration and continuous deployment (CI/CD) in a real-world
          scenario.
        </p>
      </div>

      <div class="section">
        <h2>🎯 Purpose</h2>
        <div class="highlight-box">
          <p>
            <strong>Educational Assignment:</strong> This project serves as a
            practical demonstration of DevOps practices, specifically focusing
            on automated deployment to Apache Tomcat using Jenkins automation
            server.
          </p>
        </div>
      </div>

      <div class="section">
        <h2>✨ Key Features</h2>
        <div class="features">
          <ul>
            <li>Automated build process using Apache Maven</li>
            <li>Continuous Integration with Jenkins</li>
            <li>Automated deployment to Tomcat container</li>
            <li>Dynamic content generation using JSP and Servlets</li>
            <li>Responsive and modern user interface</li>
            <li>Session management and tracking</li>
            <li>RESTful URL patterns for servlets</li>
            <li>Proper project structure following Maven conventions</li>
          </ul>
        </div>
      </div>

      <div class="section">
        <h2>🛠️ Technology Stack</h2>
        <div class="tech-info">
          <div class="tech-card">
            <h3>☕ Java</h3>
            <p>Core programming language for backend logic</p>
          </div>
          <div class="tech-card">
            <h3>🎯 JSP/Servlet</h3>
            <p>Java web technologies for dynamic pages</p>
          </div>
          <div class="tech-card">
            <h3>📦 Maven</h3>
            <p>Build automation and dependency management</p>
          </div>
          <div class="tech-card">
            <h3>🐱 Tomcat</h3>
            <p>Servlet container and web server</p>
          </div>
          <div class="tech-card">
            <h3>🔧 Jenkins</h3>
            <p>Automation server for CI/CD pipeline</p>
          </div>
          <div class="tech-card">
            <h3>🎨 HTML/CSS</h3>
            <p>Frontend presentation and styling</p>
          </div>
        </div>
      </div>

      <div class="section">
        <h2>🔄 Deployment Workflow</h2>
        <div class="features">
          <ul>
            <li>
              <strong>Step 1:</strong> Code is committed and pushed to Git
              repository
            </li>
            <li>
              <strong>Step 2:</strong> Jenkins detects changes via polling or
              webhooks
            </li>
            <li>
              <strong>Step 3:</strong> Jenkins pulls latest code from repository
            </li>
            <li>
              <strong>Step 4:</strong> Maven compiles Java code and runs tests
            </li>
            <li>
              <strong>Step 5:</strong> Maven packages application into WAR file
            </li>
            <li>
              <strong>Step 6:</strong> "Deploy to container" plugin uploads WAR
              to Tomcat
            </li>
            <li>
              <strong>Step 7:</strong> Tomcat automatically deploys the
              application
            </li>
            <li>
              <strong>Step 8:</strong> Application is live and accessible to
              users
            </li>
          </ul>
        </div>
      </div>

      <div class="section">
        <h2>📚 Learning Outcomes</h2>
        <p>By working with this project, you will learn:</p>
        <div class="features">
          <ul>
            <li>How to structure a Maven-based Java web application</li>
            <li>Understanding of Servlet and JSP lifecycle</li>
            <li>Configuration of Jenkins jobs for automated deployment</li>
            <li>Integration between Jenkins and Tomcat</li>
            <li>Best practices for CI/CD pipelines</li>
            <li>Container deployment strategies</li>
            <li>Version control integration with build systems</li>
          </ul>
        </div>
      </div>

      <div class="section">
        <h2>👨‍💻 Developer Information</h2>
        <p><strong>Project:</strong> Simple Web Application</p>
        <p><strong>Version:</strong> 1.0</p>
        <p>
          <strong>Created For:</strong> Jenkins "Deploy to container" Assignment
        </p>
        <p><strong>License:</strong> Educational Use</p>
      </div>

      <div class="btn-group">
        <a href="index.jsp" class="btn">🏠 Home</a>
        <a href="hello" class="btn" style="background: #27ae60"
          >👋 Test Servlet</a
        >
      </div>
    </div>
  </body>
</html>
