# **🛒 ASP.NET Online Store**
An **ASP.NET Web Forms online store** project that demonstrates how frontend, backend, and database layers work together in a typical e-commerce application.
<img width="1087" height="727" alt="web project" src="https://github.com/user-attachments/assets/b2c34240-a8cd-4ad2-9952-53febcd20a97" />

#**🚀 Features**

-User authentication (login/logout with session management)

-Database integration with LocalDB (via DatabaseHelper)

-Clean separation of concerns between frontend (.aspx), backend (.aspx.cs), and data access layer

-Page-to-page navigation with session state

-Configurable connection strings and settings via Web.config

# **🔄 Data Flow (Pipeline)**

1.User Request → User interacts with ASPX page (e.g., submits login form)

2.Request Processing → Routed to the correct page handler

3.Backend Logic → Code-behind executes business logic (e.g., user authentication)

4.Data Access Layer → Database queries executed through DatabaseHelper

5.Response Generation → Session updated and user redirected to target page

6.Page Rendering → HTML/CSS/JS sent back to browser

# **🧩 Project Structure & Linkages**

-Web.config → Stores DB connection strings & app settings

-Models & DatabaseHelper → Handle SQL queries and data retrieval

-Frontend & Code-behind → Server controls trigger event handlers in C#

-Session State & Redirects → Manage user state and navigation

-Global.asax / RouteConfig → Setup routes and app-wide configuration

# **⚙️ Tech Stack**

-ASP.NET Web Forms

-C#

-SQL Server LocalDB

-HTML, CSS, JavaScript
