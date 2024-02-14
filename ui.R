# Load libraries
suppressWarnings(
  suppressPackageStartupMessages({
    library(shiny)
    library(shinyjs)
    library(DT)
  })
)

# Define UI
ui <- fluidPage(
  id="uiPage",
  includeScript("www/scripts.js"),
  includeCSS("www/styles.css"),
  tags$head(
    useShinyjs(),  
    extendShinyjs(text=readr::read_file('www/scripts.js'),
                  functions = c("loading", "finishedLoading")),
    tags$title("APP TITLE"),
    tags$link(rel="shortcut icon", href="favicon.ico"),
    tags$head(
      tags$link(
        rel = "stylesheet", 
        href = "https://cdn.jsdelivr.net/npm/katex@0.15.2/dist/katex.min.css", 
        integrity = "sha384-MlJdn/WNKDGXveldHDdyRP1R4CTHr3FeuDNfhsLPYrq2t0UBkUdK2jyTnXPEK1NQ",
        crossorigin = "anonymous"
      ),
      tags$script(
        defer = "", 
        src = "https://cdn.jsdelivr.net/npm/katex@0.15.2/dist/katex.min.js", 
        integrity = "sha384-VQ8d8WVFw0yHhCk5E8I86oOhv48xLpnDZx5T9GogA/Y84DcCKWXDmSDfn13bzFZY",
        crossorigin = "anonymous"
      ),
      tags$link(
        rel="stylesheet",
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css",
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==",
        crossorigin="anonymous",
        referrerpolicy="no-referrer"
      )
    ),
  ),
  h2("APP HEADER"),
  div(
    id="layoutSection",
    class="wrapper shiny-row",
    div(
      id="sidebarSection",
      div(
        id="sidebarOptions",
        actionButton(inputId="apply", label="Apply Selection")
      )
    ),
    div(
      id="mainSection"
    )
  )
)