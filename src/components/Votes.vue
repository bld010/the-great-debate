<template>
  <main>
    <div class="votes-container">
      <div class="cake-column">
        <h3>🎂 Cake! 🎂</h3>
        <ul>
          <li v-for="cakeVote in cakeVotes" :key="cakeVote.callSid">
            <Vote :vote="cakeVote" type="cake"/>
          </li>
        </ul>
      </div>
      <div class="pie-column">
        <h3>🥧 Pie! 🥧</h3>
        <ul>
          <li v-for="pieVote in pieVotes" :key="pieVote.callSid">
            <Vote :vote="pieVote" type="pie"/>
          </li>
        </ul>
      </div>
    </div>
  </main>
</template>

<script>
import Vote from './Vote.vue';

export default {
  name: 'Votes',
  components: {
    Vote
  },
  props: {
    cakeVotes: Array,
    pieVotes: Array
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>

.votes-container {
  display: flex;
  justify-content: center;
  min-height: 20rem;
}

.pie-column,
.cake-column {
  width: 30%;
  min-height: 100%;
  margin: 0 20px;
}

h3 {
  border-bottom: 2px solid black;
}

ul {
  list-style-type: none;
  padding: 0;
}
</style>
