$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  function addListing(listing) {
    $propertyListings.append(listing);
  }
  function clearListings() {
    $propertyListings.empty();
  }
  window.propertyListings.clearListings = clearListings;

  function addProperties(properties, isReservation = false) {
    // if it's a reservation, we don't want to clear the listings a second time 
    // in the addProperties function call
    if (!isReservation) {
      clearListings();
    }
    // check for user login
    getMyDetails()
    .then()
    console.log('properties-----', properties);
    for (const propertyId in properties) {
      const property = properties[propertyId];
      const listing = propertyListing.createListing(property, isReservation);
      addListing(listing);
    }

    // check to see if reservations were added
    if (isReservation) {
      $('.update-button').on('click', function() {
        const idData = $(this).attr('id').substring(16);
        getIndividualReservation(idData).then(data => {
          views_manager.show("updateReservation", data);       
        });
      })
      $('.delete-button').on('click', function() {
        const idData = $(this).attr('id').substring(16);
        console.log(`delete ${idData}`);
        // deleteReservation(idData).then(data => {
        //   console.log('data-----', data);
        //   $(this).attr('id').remove();
        // });
      })
    }
  }
  window.propertyListings.addProperties = addProperties;

});