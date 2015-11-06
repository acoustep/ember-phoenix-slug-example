import Ember from 'ember';

export default Ember.Route.extend({
  model: function(params) {
    this.set('product', this.modelFor('product'));
    return this.store.find('product', params.product_slug);
  },
  serialize: function(model, params) {
    return { product_slug: model.get('slug') };
  }
});
