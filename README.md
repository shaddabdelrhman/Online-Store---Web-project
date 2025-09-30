An ASP.NET Web Forms online store project that demonstrates how frontend, backend, and database layers work together in a typical e-commerce application.

🚀 Features

User authentication (login/logout with session management)

Database integration with LocalDB (via DatabaseHelper)

Clean separation of concerns between frontend (.aspx), backend (.aspx.cs), and data access layer

Page-to-page navigation with session state

Configurable connection strings and settings via Web.config

🔄 Data Flow (Pipeline)

User Request → User interacts with ASPX page (e.g., submits login form)

Request Processing → Routed to the correct page handler

Backend Logic → Code-behind executes business logic (e.g., user authentication)

Data Access Layer → Database queries executed through DatabaseHelper

Response Generation → Session updated and user redirected to target page

Page Rendering → HTML/CSS/JS sent back to browser

🧩 Project Structure & Linkages

Web.config → Stores DB connection strings & app settings

Models & DatabaseHelper → Handle SQL queries and data retrieval

Frontend & Code-behind → Server controls trigger event handlers in C#

Session State & Redirects → Manage user state and navigation

Global.asax / RouteConfig → Setup routes and app-wide configuration

⚙️ Tech Stack

-ASP.NET Web Forms

-C#

-SQL Server LocalDB

-HTML, CSS, JavaScript
