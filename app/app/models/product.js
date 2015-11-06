import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr(),
  slug: DS.attr(),
  blurb: DS.attr(),
  preview: DS.attr(), 
});
