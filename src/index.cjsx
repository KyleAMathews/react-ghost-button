React = require 'react'
assign = require 'object-assign'

module.exports = React.createClass
  getDefaultProps: ->
    color: 'white'
    hoverTextColor: 'black'
    children: "Hello World"
    href: 'https://google.com'

  getInitialState: ->
    state: {}

  handleMouseOver: ->
    @setState style:
      background: @props.color
      color: @props.hoverTextColor

  handleMouseOut: ->
    @setState style:
      background: 'none'
      color: @props.color

  handleClick: (e) ->
    if @props.handleClick then @props.handleClick(e)

  render: ->
    style:
      padding: "5px 11px"
    <a
      {...@props}
      href={@props.href}
      onClick={@handleClick}
      onMouseOver={@handleMouseOver}
      onTouchStart={@handleMouseOver}
      onMouseOut={@handleMouseOut}
      onTouchEnd={=> setTimeout((=> @handleMouseOut()), 200)}
      style={assign({
        border: "1px solid #{@props.color}"
        borderRadius: 4
        color: @props.color
        display: 'inline-block'
        outline: 'none'
        padding: "5px 11px"
        transition: 'background-color 0.2s ease-out, color 0.2s ease-out'
        textDecoration: 'none'
        textAlign: 'center'
      }, @props.style, @state.style)}
    >
      {@props.children}
    </a>
