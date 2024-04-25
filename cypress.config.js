const { defineConfig } = require("cypress");

module.exports = defineConfig({
  projectId: "qs37xj",
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      on("task", {
        log(message) {
          console.log(message);
          return null;
        },
      });
    },
  },
});
