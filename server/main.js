import { Meteor } from 'meteor/meteor';

Meteor.startup(() => {
  if (process.env.BLOCKLET_PORT) {
    process.env.PORT = process.env.BLOCKLET_PORT;
  }

  WebAppInternals.setBundledJsCssPrefix(`/${process.env.BLOCKLET_DID || ''}`);
});
