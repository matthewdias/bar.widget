command: "/Users/Matthew/Library/Application\\ Support/Übersicht/widgets/bar.widget/gpmdpbar"

refreshFrequency: 2000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="gpm">
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".gpm span:first-child", el).text("  #{output}")
    $icon = $(".gpm span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #263239
  font: 13px Roboto Mono
  height: 16px
  right: 10px
  overflow: hidden
  text-overflow: ellipsis
  bottom: 4px
  width: auto
"""
