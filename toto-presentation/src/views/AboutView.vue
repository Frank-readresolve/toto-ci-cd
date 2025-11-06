<script>
export default {
  data() {
    return {
      locale: import.meta.env.VITE_I18N_LOCALE,
      hello: null
    }
  },
  async beforeMount() {
    const response = await fetch(`${import.meta.env.VITE_BACKEND_URL}/toto/hello`);
    const data = await response.text();
    this.hello = data;
  }
}
</script>

<template>
  <div class="about">
    <h1>Page title Frank - Push event</h1>
    <p>{{ locale }}</p>
    <p>{{ hello }}</p>
    <p>Change :)</p>
  </div>
</template>

<style>
@media (min-width: 1024px) {
  .about {
    min-height: 100vh;
    display: flex;
    align-items: center;
  }
}
</style>
