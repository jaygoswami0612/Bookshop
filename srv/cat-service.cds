using my.bookshop as my from '../db/data-model';

service CatalogService {
     @odata.draft.enabled: true
     entity Books @(restrict: [

        {
            grant: ['*'],
            to   : 'bookshop.adminrole'
        },
        {
            grant: ['READ'],
            to   : 'bookshop.readrole'
        }

    ]) as projection on my.Books;

}
