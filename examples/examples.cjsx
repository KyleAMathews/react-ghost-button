React = require('react')
GhostButton = require '../src/index'
{Container} = require 'react-responsive-grid'
Headroom = require 'react-headroom'

module.exports = React.createClass
  render: ->
    <div>
      <Headroom style={{background: 'orange', padding: 12}} wrapperStyle={{marginBottom: 32}}>
        <Container style={maxWidth:'1000px'}>
          <h1 style={{margin:0}}>React Ghost Button</h1>
        </Container>
      </Headroom>
      <Container style={{maxWidth:'1000px', padding: 24}} >
        <a href="https://github.com/KyleAMathews/react-ghost-button">Code on Github</a>
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Green</h3>
        <GhostButton
          color="green"
        />
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Purple</h3>
        <GhostButton
          color="purple"
        />
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Gray</h3>
        <GhostButton
          color="gray"
        />
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Red</h3>
        <GhostButton
          color="red"
        />

        <br />
        <br />
        <h2>On a colored background</h2>
        <div
          style={{
            background: 'yellow'
            padding: 16
            overflow: 'hidden'
          }}
        >
          <h3 style={{marginBottom: 12}}>Green</h3>
          <GhostButton
            background="yellow"
            color="green"
          />
          <br />
          <br />
          <h3 style={{marginBottom: 12}}>Purple</h3>
          <GhostButton
            background="yellow"
            color="purple"
          />
          <br />
          <br />
          <h3 style={{marginBottom: 12}}>Gray</h3>
          <GhostButton
            background="yellow"
            color="gray"
          />
          <br />
          <br />
          <h3 style={{marginBottom: 12}}>Red</h3>
          <GhostButton
            background="yellow"
            color="red"
          />
        </div>

      </Container>
    </div>
