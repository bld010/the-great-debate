<template>
  <div class="vote">
    <h2 v-if="type == 'cake'">🎂 </h2>
    <h2 v-else>🥧</h2>
    <audio v-if="vote.recordingUrl" controls>
        <source :src="vote.recordingUrl" type="audio/mpeg">
        Your browser does not support the audio tag.
    </audio>
  </div>
</template>

<script>

export default {
  name: 'Vote',
  props: {
    vote: Object,
    type: String
  },
}
</script>

<style scoped>
.vote {
  /* border: 2px solid pink; */
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  border-radius: 10px;
  min-width: 50%;
}

audio {
  padding: 0 10px;
}

h2 {
  font-size: 5rem;
  margin: 0;
}
</style>
