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
          hoverTextColor="white"
        />
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Purple</h3>
        <GhostButton
          color="purple"
          hoverTextColor="white"
        />
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Gray</h3>
        <GhostButton
          color="gray"
          hoverTextColor="white"
        />
        <br />
        <br />
        <h3 style={{marginBottom: 12}}>Red</h3>
        <GhostButton
          color="red"
          hoverTextColor="white"
        />

        <br />
        <br />

        <h2>In a form</h2>
        <form
          onSubmit={(e) -> e.preventDefault()}
        >
          <label>Some text</label><br/>
          <input type="text"/><br/><br/>
          <GhostButton
            href=""
            color="red"
            hoverTextColor="white"
            onClick={(e) -> e.preventDefault()}
          >
            Save me
          </GhostButton>
        </form>

        <br />
        <br />

        <h2>Set the element to button not default link</h2>
        <form
          onSubmit={(e) -> e.preventDefault()}
        >
          <GhostButton
            element="button"
            color="red"
            hoverTextColor="white"
            style={{
              cursor: 'pointer'
              font: 'inherit'
            }}
          >
            I'm a button!
          </GhostButton>
        </form>

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
            color="green"
            hoverTextColor="yellow"
          />
          <br />
          <br />
          <h3 style={{marginBottom: 12}}>Purple</h3>
          <GhostButton
            color="purple"
            hoverTextColor="yellow"
          />
          <br />
          <br />
          <h3 style={{marginBottom: 12}}>Gray</h3>
          <GhostButton
            color="gray"
            hoverTextColor="yellow"
          />
          <br />
          <br />
          <h3 style={{marginBottom: 12}}>Red</h3>
          <GhostButton
            preventDefault
            color="red"
            hoverTextColor="yellow"
          />
        </div>

      </Container>
    </div>
