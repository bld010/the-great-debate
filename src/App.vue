<template>
  <div id="app">
    <h1>The Great Debate</h1>
    <Votes :pieVotes="pieVotes" :cakeVotes="cakeVotes" />
  </div>
</template>

<script>
import Votes from './components/Votes.vue'

export default {
  name: 'App',
  components: {
    Votes,
  }, 
  data: function () {
    return {
      votesFromApi: [],
      cakeVotes: [],
      pieVotes: []
    }
  },
  methods: {
    sortVotes() {
      this.votesFromApi.forEach(voteObject => {
        console.log(voteObject)
        if (voteObject.vote === "5") {
          this.cakeVotes.push(voteObject)
        } else {
          this.pieVotes.push(voteObject)
        }
      })
    }
  }, 
  async mounted () {
    try {
      const response = await fetch('http://localhost:3000/pollResponses');
      const { votes } = await response.json();
      if (votes && votes.length) {
        this.votesFromApi = votes;
      }
      this.sortVotes();      
    } catch (error) {
      console.log(error)
    }
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
