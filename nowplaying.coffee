command: "python /Users/Matthew/Library/Application\\ Support/Übersicht/widgets/bar.widget/nowplaying.py"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" />
  <div class="npl">
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    $(".npl span:first-child", el).text("  #{output}")
    $icon = $(".npl span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #263239
  font: 13px Roboto Mono
  right: 10px
  overflow: hidden
  text-overflow: ellipsis
  bottom: 4px
  width: auto
"""
