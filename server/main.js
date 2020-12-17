import { Meteor } from 'meteor/meteor';
process.env.ROOT_URL = 'http://127.0.0.1:3000';

Meteor.startup(() => {
  if (process.env.BLOCKLET_PORT) {
    process.env.PORT = process.env.BLOCKLET_PORT;
  }

  WebAppInternals.setBundledJsCssPrefix(`/${process.env.BLOCKLET_DID || ''}`);
});
