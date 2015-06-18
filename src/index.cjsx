React = require 'react'
assign = require 'object-assign'

module.exports = React.createClass
  getDefaultProps: ->
    color: 'white'
    hoverTextColor: 'black'
    children: "Hello World"
    href: 'https://google.com'
    element: 'a'

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
    if @props.onClick then @props.onClick(e)

  render: ->
    Element = @props.element
    <Element
      {...@props}
      href={@props.href}
      onClick={@handleClick}
      onMouseOver={@handleMouseOver}
      onTouchStart={@handleMouseOver}
      onFocus={@handleMouseOver}
      onMouseOut={@handleMouseOut}
      onBlur={@handleMouseOut}
      onTouchEnd={=> setTimeout((=> @handleMouseOut()), 200)}
      style={assign({
        background: 'none'
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
    </Element>
