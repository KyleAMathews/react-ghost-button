React = require 'react'
tweenState = require('react-tween-state')
chroma = require 'chroma-js'
colorPicker = require 'color-pairs-picker'
assign = require 'object-assign'
Typography = require 'typography'
typography = Typography()
rhythm = {typography}

module.exports = React.createClass
  mixins: [tweenState.Mixin]

  getDefaultProps: ->
    background: 'white'
    color: 'blue'
    children: "Hello World"
    typography: typography
    href: 'https://google.com'

  getInitialState: ->
    {bg: bg, fg: fg} = colorPicker(
      @props.background,
      @props.color,
      contrast: 4.5
    )

    fgChroma = chroma(fg)
    colorScale = chroma.scale([fg, bg])

    {
      backgroundOpacity: 0
      fgChroma: fgChroma
      fg: fg
      colorScale: colorScale
    }

  handleMouseOver: ->
    @tweenState('backgroundOpacity', {
      duration: 200
      endValue: 1
    })

  handleMouseOut: ->
    @tweenState('backgroundOpacity', {
      duration: 200
      endValue: 0
    })

  handleClick: (e) ->
    if @props.handleClick then @props.handleClick(e)

  render: ->
    {rhythm, fontSizeToPx, fontSizeToMS} = @props.typography
    <a
      {...@props}
      href={@props.href}
      onClick={@handleClick}
      onMouseOver={@handleMouseOver}
      onTouchStart={@handleMouseOver}
      onMouseOut={@handleMouseOut}
      onTouchEnd={=> setTimeout((=> @handleMouseOut()), 200)}
      style={assign({
        background: @state.fgChroma.alpha(@getTweeningValue('backgroundOpacity')).css()
        border: "1px solid #{@state.fg}"
        borderRadius: 4
        color: @state.colorScale(@getTweeningValue('backgroundOpacity'))
        padding: "calc(#{rhythm(1/4)} - 1px) calc(#{rhythm(1/2)} - 1px)"
        textDecoration: 'none'
      }, @props.style)}
    >
      {@props.children}
    </a>
