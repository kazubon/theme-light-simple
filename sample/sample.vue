<template>
  <div>
    <h1>{{message}}</h1>
    <input type="text" v-model="greeting" />
  </div>
</template>

<script>
import Axios from 'axios';

export default {
  props: ['name'],
  data() {
    return {
      greeting: '',
    }
  },
  computed: {
    message() {
      return `${this.name} さん、 ${this.greeting}`;
    }
  }
}
</script>

<style>
h1 { color: #219186 }
</style>