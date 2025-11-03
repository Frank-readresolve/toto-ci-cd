<script>
export default {
  data() {
    return {
      locale: import.meta.env.VITE_I18N_LOCALE,
      url: import.meta.env.VITE_BACKEND_URL
    }
  }
}
</script>

<template>
  <div class="about">
    <h1>Page title Frank - Push event</h1>
    <p>{{ locale }}</p>
    <p>{{ url }}</p>
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
