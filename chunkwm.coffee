command: "/Users/Matthew/.chunkwm_scripts/chwm-bar"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="foc">
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #263239
  font: 13px SF Mono
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  bottom: 4px
  width: auto
"""
